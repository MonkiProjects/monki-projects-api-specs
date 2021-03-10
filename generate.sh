#!/bin/sh

FOLDER=$1
FORCE=$2

file='generate.plantuml'
kroki='https://kroki.io'
output='svg'
assets_folder='assets'
cache_folder='.gen-cache'

# Empty cache folder if force (`-f`)
[[ $FORCE == '-f' ]] && rm -rf "$cache_folder"

# Create cache directory if needed
[[ !(-d "$cache_folder") ]] && mkdir -p "$cache_folder"

# See <https://stackoverflow.com/a/63970495/10967642>
strip() {
    # Get the basedir without external command
    # by stripping out shortest trailing match of / followed by anything
    dir_path=${file_path%/*}

    # Strip uptmost trailing extension only
    # by stripping out shortest trailing match of dot followed by anything
    file_path_no_ext=${file_path%.*}

    # Get the basename without external command
    # by stripping out longest leading match of anything followed by /
    file_name=${file_path##*/} # <=> `basename "$file_path"`
}

compute_vars() {
    strip
    dest="$assets_folder/$file_path_no_ext.$output"
    file_cache="$cache_folder/$file_path.sha"
}

store_hash() {
    # Create cache sub-directory if needed
    if [[ !(-d "$cache_folder/$dir_path") ]]; then mkdir -p "$cache_folder/$dir_path"; fi

    cat "$file_path" | openssl dgst -sha256 > "$file_cache"
}

is_cached() {
    # File not cached if cache file doesn't exist
    if [[ !(-f "$file_cache") ]]; then
        return 1; # `1` resolves to `false`
    fi

    # File not cached if destination file doesn't exist
    if [[ !(-f "$dest") ]]; then
        return 1; # `1` resolves to `false`
    fi

    cached=$(cat "$file_cache")
    hash=$(cat "$file_path" | openssl dgst -sha256)

    # File cached only if cached hash equals file hash
    if [ $cached == $hash ]; then
        return 0; # `0` resolves to `true`
    else
        return 1; # `1` resolves to `false`
    fi
}

process() {
    type=$1

    while read file_path; do
        compute_vars

        # Skip cached diagrams
        is_cached && echo "Skipping cached '$file_path'" && continue

        # Create sub-directory if needed
        if [[ !(-d "$assets_folder/$dir_path") ]]; then mkdir -p "$assets_folder/$dir_path"; fi

        curl --data-binary "@$file_path" "$kroki/$type/$output" > "$dest"

        store_hash
    done
}

find "$FOLDER" -name '*.plantuml' | process 'plantuml'
find "$FOLDER" -name '*.mmd' | process 'mermaid'
find "$FOLDER" -name '*.bpmn' | process 'bpmn'

clean_cache() {
    find $cache_folder/* | while read file_path; do
        # Remove leading `.cache`
        cached=${file_path#*/}
        # Remove trailing `.sha`
        cached=${cached%.*}

        if [[ !(-e "$cached") ]]; then
            # Remove garbage cache
            rm -rf "$file_path"
        fi
    done
}

clean_cache
