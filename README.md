# Monki Projects OpenAPI Specifications

This project contains [OpenAPI specifications](https://swagger.io/specification/)
for all Monki Projects' [APIs](https://en.wikipedia.org/wiki/API).

> **Tip:** Some badges are clickable links, try to use them if you're searching for something.

## Overview

### Monki Projects API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
![Latest version](https://img.shields.io/badge/latest-x.x.x-inactive)  
![Ready?](https://img.shields.io/badge/ready%3F-NO-critical)
![Specification](https://img.shields.io/badge/specification-TODO-critical)
![Development](https://img.shields.io/badge/development-TODO-critical)
![Clients](https://img.shields.io/badge/clients-TODO-critical)
![Documentation](https://img.shields.io/badge/documentation-TODO-critical)

"Monki Projects API" is the main API grouping together all of Monki Projects' APIs.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | ⨯ | ⨯ | ⨯ |

### Users API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
[![Latest version](https://img.shields.io/badge/latest-1.0.0-informational)](https://api.monkiprojects.com/v1)  
![Ready?](https://img.shields.io/badge/ready%3F-YES-success)
[![Specification](https://img.shields.io/badge/specification-Almost_Ready-important)](./users-api-v1.yml)
![Development](https://img.shields.io/badge/development-Up_To_Date-success)
![Clients](https://img.shields.io/badge/clients-Up_To_Date-success)
![Documentation](https://img.shields.io/badge/documentation-TODO-critical)

The "Users API" handles actions related to user management.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | [users-api-v1.yml](./users-api-v1.yml) | Swift: [mp-users-api-client-swift](https://github.com/MonkiProjects/mp-users-api-client-swift) | ⨯ |

### Placemarks API

[![Fully qualifed domain name](https://img.shields.io/badge/base-api.monkiprojects.com-informational)](https://api.monkiprojects.com)
[![Latest version](https://img.shields.io/badge/latest-1.0.0-informational)](https://api.monkiprojects.com/v1)  
![Ready?](https://img.shields.io/badge/ready%3F-NO-critical)
[![Specification](https://img.shields.io/badge/specification-Almost_Ready-important)](./placemarks-api-v1.yml)
![Development](https://img.shields.io/badge/development-Almost_Ready-important)
![Clients](https://img.shields.io/badge/clients-Up_To_Date-success)
![Documentation](https://img.shields.io/badge/documentation-TODO-critical)

The "Placemarks API" handles actions related to placemark and map management.

| Version | Base URL | Specification file | Clients | Documentation |
| ------: | :------- | :----------------- | :----- | :------------ |
| 1       | [api.monkiprojects.com/v1](https://api.monkiprojects.com/v1) | [placemarks-api-v1.yml](./placemarks-api-v1.yml) | Swift: [mp-placemarks-api-client-swift](https://github.com/MonkiProjects/mp-placemarks-api-client-swift) | ⨯ |

## Technical aspects

### HTTPS

For security reasons, all Monki Projects' APIs force [HTTPS](https://en.wikipedia.org/wiki/HTTPS)
