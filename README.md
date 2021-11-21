# Getting Started

## Build Container Image
NOTE: you need at >= 8GB of combined RAM + swap to build the image
```
docker build -f docker/Dockerfile -t zero-l .
```

## Install helm chart
```
helm install zero-l 0L-node
```
