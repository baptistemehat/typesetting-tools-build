# Dockerized typesetting tools

## Build and push the image to Dockerhub

1. Update version number in `compose.yaml`:
```yaml
tags: 
    - baptistemehat/typesetting-tools:<version x.y.z>
    - baptistemehat/typesetting-tools:latest
```
2. Build the image:
```
docker compose build
```

3. Push the image:
```
docker push docker.io/baptistemehat/typesetting-tools:<version x.y.z>
docker push docker.io/baptistemehat/typesetting-tools:latest
```
