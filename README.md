# docker-nginx-s3-proxy-cache

[![Docker Repository on Quay.io](https://quay.io/repository/hectcastro/nginx-s3-proxy-cache/status "Docker Repository on Quay.io")](https://quay.io/repository/hectcastro/nginx-s3-proxy-cache)
[![Apache V2 License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/hectcastro/docker-sneaker/blob/develop/LICENSE)

A proof of concept caching proxy for Amazon S3 using Nginx.

## Usage

You can either build the image from this repository:

```bash
$ docker build -t nginx-s3-proxy-cache .
```

Or pull it down from [Quay](https://quay.io):

```bash
$ docker pull quay.io/hectcastro/nginx-s3-proxy-cache
```

From there, use Docker to create a container from the image with the necessary command line arguments:

```bash
$ docker run -ti --rm -p 8000:80 nginx-s3-proxy-cache
```

In another terminal window, use the [AWS CLI](https://aws.amazon.com/cli/) to test:

```bash
$ HTTP_PROXY="http://localhost:8000/" aws \
    --debug \
    --endpoint-url http://s3.amazonaws.com/ \
    s3 cp s3://bucket/file.tar.gz .
```
