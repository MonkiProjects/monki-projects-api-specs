#!/bin/sh

# This script uses
# - [openapi-merge-cli](https://www.npmjs.com/package/openapi-merge-cli)
# - [Redocly OpenAPI CLI](https://redoc.ly/docs/cli/)

# Merge files together
npx openapi-merge-cli --config ./openapi-merge-v1.yaml

# Dereference merged file
npx @redocly/openapi-cli@latest bundle -o ./specs/monki-projects-api-v1-bundle.yaml ./specs/monki-projects-api-v1.yaml
npx @redocly/openapi-cli@latest bundle -o ./specs/monki-projects-api-v1-deref.json -d 'true' ./specs/monki-projects-api-v1-bundle.yaml
