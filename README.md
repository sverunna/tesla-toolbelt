# Tesla Toolbelt Docker

A Docker container designed for Tesla engineers. The goal is to have as many commonly used utility programs installed.

## Usage
Download and run the latest pre-built container
```
docker run --pull=missing --name tesla-toolbelt --detach --network host -e TOOLBELT_DEBUG=true -v /:/= sverunna/tesla-toolbelt:latest
```
