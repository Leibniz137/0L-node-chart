# Getting Started
This chart will run a 0L node.


## Build Container Image
NOTE: you need at >= 8GB of combined RAM + swap to build the image
```
docker build -f docker/Dockerfile -t zero-l .
```

## Install helm chart
NOTE: set the image repository value in [values.yaml](./0L-node/values.yaml) to the repository that you pushed to!

```
helm install zero-l 0L-node
```
