# Dockerized typesetting tools

This repository contains the "sources" (`Dockerfile` and `compose.yaml`) of my typesetting docker image `baptistemehat/typesetting-tools`.

The docker image built from this repo contains my favorite typesetting tools (texlive, pandoc, marp, etc.) See the [Description](#description) for details.

<a name="description"></a>
## Description

* **Base image**: `debian:trixie` (required for installing just from apt repos)
* **Typesetting tools**:
    * [pandoc](https://pandoc.org/): document converter
    * [texlive](https://tug.org/texlive/): TeX engine
    * [marp-cli](https://github.com/marp-team/marp-cli/): markdown to pdf slide deck converter

* **Miscellaneous tools**:
    * [just](https://github.com/casey/just)

## Usage

For usage, see https://github.com/baptistemehat/typesetting-template


## Reminder: build and push the image to Dockerhub

1. Update version number in `compose.yaml`:
```yaml
tags: 
    - <user>/typesetting-tools:<version x.y.z>
    - <user>/typesetting-tools:latest
```
2. Build the image:
```
docker compose build
```

3. Push the image:
```
docker push docker.io/<user>/typesetting-tools:<version x.y.z>
docker push docker.io/<user>/typesetting-tools:latest
```
