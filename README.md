# wosind-docker

this is the dockerfile for the project: https://github.com/whitelisthackers/wosind

## build the docker

```
--- optional
mkdir /opt/docker && cd /opt/docker
git clone https://github.com/syssio/wosind-docker.git /opt/docker/wosind
cd /opt/docker/wosind
---

docker build -t wosind:local .
```

## start the docker
```
docker run -it --rm wosind:local

--- start the bash
docker run -it --rm wosind:local bash
```
