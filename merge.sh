#!/bin/sh

# This script uses
# - [openapi-merge-cli](https://www.npmjs.com/package/openapi-merge-cli)
# - [swagger-cli](https://github.com/APIDevTools/swagger-cli)

# Merge files together
npx openapi-merge-cli --config ./openapi-merge-v1.yaml

# Dereference merged file
npx swagger-cli bundle -t yaml -o ./specs/monki-projects-api-v1-deref.yaml ./specs/monki-projects-api-v1.yaml
