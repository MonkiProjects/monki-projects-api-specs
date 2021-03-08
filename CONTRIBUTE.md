# How to contribute

## Create/update OpenAPI specification files

1. Create/update specification files
2. Run `./generate.sh`
3. Udpate [README.md](README.md) to reflect your changes

## Create/update diagrams

1. Create/update diagram files
2. Run `./generate.sh diagrams`

> **Note:** Supported file types are `plantuml`, `mermaid` and `bpmn`.
> To add a file type ([supported by Kroki](https://kroki.io/#support)),
> insert `find "$FOLDER" -name '*.<FILE_TYPE>' | process '<FILE_TYPE>'`
> at the bottom of [./generate.sh](./generate.sh)
> (replacing `<FILE_TYPE>`) by your file type.

> **Note:** Diagrams are generated in SVG format
> ([supported for all file types by Kroki](https://kroki.io/#support)).

> **Warning:** Do not use same file names for different langages
> otherwise their outputs will be overwritten.
> Example: `diag1.plantuml` and `diag1.mermaid`
> will both generate `diag1.svg`.
