# Monki Projects OpenAPI Specifications

This project contains [OpenAPI specifications](https://swagger.io/specification/)
for all Monki Projects' [APIs](https://en.wikipedia.org/wiki/API).

> **Tip:** Some badges are clickable links, try to use them if you're searching for something.

## Overview

### Monki Projects API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
[![Latest version](https://img.shields.io/badge/latest-1.0.0-informational)](https://api.monkiprojects.com/v1)  
![Ready?](https://img.shields.io/badge/ready%3F-NO-critical)
[![Specification](https://img.shields.io/badge/specification-AUTO-success)](./specs/monki-projects-api-v1.yaml)
![Development](https://img.shields.io/badge/development-Up_To_Date-success)
![Clients](https://img.shields.io/badge/clients-AUTO-success)
[![Swagger UI deploy status badge](https://github.com/MonkiProjects/monki-projects-api-specs/actions/workflows/swagger-ui.yml/badge.svg)](https://github.com/MonkiProjects/monki-projects-api-specs/actions/workflows/swagger-ui.yml)

*Monki Projects API* is the main API grouping together all of Monki Projects' APIs.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | [specs/monki-projects-api-v1.yaml](./specs/monki-projects-api-v1.yaml) | Swift: [monki-projects-api-client-swift](https://github.com/MonkiProjects/monki-projects-api-client-swift) | [docs.monkiprojects.com/monki-projects-api-specs](https://docs.monkiprojects.com/monki-projects-api-specs/) |

### Users API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
[![Latest version](https://img.shields.io/badge/latest-1.0.0-informational)](https://api.monkiprojects.com/v1)  
![Ready?](https://img.shields.io/badge/ready%3F-YES-success)
[![Specification](https://img.shields.io/badge/specification-Almost_Ready-important)](./specs/users-api-v1.yaml)
![Development](https://img.shields.io/badge/development-Up_To_Date-success)
![Clients](https://img.shields.io/badge/clients-AUTO-success)
![Documentation](https://img.shields.io/badge/documentation-AUTO-success)

The *Users API* handles actions related to user management.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | [specs/users-api-v1.yaml](./specs/users-api-v1.yaml) | Swift: [monki-projects-api-client-swift](https://github.com/MonkiProjects/monki-projects-api-client-swift) (`UsersAPI`) | [docs.monkiprojects.com/monki-projects-api-specs](https://docs.monkiprojects.com/monki-projects-api-specs/) |

### Placemarks API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
[![Latest version](https://img.shields.io/badge/latest-1.0.0-informational)](https://api.monkiprojects.com/v1)  
![Ready?](https://img.shields.io/badge/ready%3F-NO-critical)
[![Specification](https://img.shields.io/badge/specification-Almost_Ready-important)](./specs/placemarks-api-v1.yaml)
![Development](https://img.shields.io/badge/development-Almost_Ready-important)
![Clients](https://img.shields.io/badge/clients-AUTO-success)
![Documentation](https://img.shields.io/badge/documentation-AUTO-success)

The *Placemarks API* handles actions related to placemark and map management.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | [specs/placemarks-api-v1.yaml](./specs/placemarks-api-v1.yaml) | Swift: [monki-projects-api-client-swift](https://github.com/MonkiProjects/monki-projects-api-client-swift) (`PlacemarksAPI`) | [docs.monkiprojects.com/monki-projects-api-specs](https://docs.monkiprojects.com/monki-projects-api-specs/) |

## Useful diagrams

> Diagrams are automatically generated using [Kroki](https://kroki.io/).

### Placemark submission

![Placemark submission diagram](./assets/diagrams/placemark-submission.svg)

## Technical aspects

### HTTPS

For security reasons, all Monki Projects' APIs force [HTTPS](https://en.wikipedia.org/wiki/HTTPS)

## Contributing

### Merge OpenAPI specification files

To merge OpenAPI specification files, just run `./merge.sh` in a terminal.
