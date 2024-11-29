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
    * [just](https://github.com/casey/just): task runner

## Usage

### Github template repository
If you'd like to use this docker image for typesetting documents, I recommend you to check out the [GitHub template repository](https://github.com/baptistemehat/typesetting-template) I made for it.

The template repository includes:
* a set a directories to organise your work (`src/` and `build/`)
* a `compose.yaml` file that sets up volumes and working directories for you,
* a `justfile` containing various "default" recipes for generating pdf and html files from you sources

### Create your own image based on `baptistemehat/typesetting-tools`

If you'd like to use this image as a base docker image, create a Dockerfile and add the following line on top:
```Dockerfile
FROM baptistemehat/typesetting-tools:latest
```

## Reminder: build and push the image to Dockerhub

1. Update version number in `compose.yaml`:
```yaml
tags: 
    - baptistemehat/typesetting-tools:<version x.y.z>
    - baptistemehat/typesetting-tools:latest
```
2. Build the image:
```sh
docker compose build
```

3. Push the image:
```sh
docker push docker.io/baptistemehat/typesetting-tools:<version x.y.z>
docker push docker.io/baptistemehat/typesetting-tools:latest
```
