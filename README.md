# Docker container for ffq

Dockerfile for [ffq](https://github.com/pachterlab/ffq): A tool to find sequencing data and metadata from public databases

It's on [dockerhub](https://hub.docker.com/r/naotokubota/ffq) and [github](https://github.com/NaotoKubota/ffq).

## tags and links
- `0.2.1` [(master/Dockerfile)](https://github.com/NaotoKubota/ffq/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/ffq:0.2.1
```

or

```sh
git clone git@github.com:NaotoKubota/ffq.git
cd ffq
docker build --rm -t naotokubota/ffq:0.2.1 .
```

## running

```sh
docker run --rm -it naotokubota/ffq:0.2.1
```