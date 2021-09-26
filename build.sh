#!/bin/bash
set -e

znapzend_tag=0.21
docker_tag=debian


docker build -t znapzendbuild --build-arg=image=$docker_tag --build-arg=znapzend-tag=$znapzend_tag .
docker run -v $PWD:/opt/workdir --rm znapzendbuild bash -c "cp /znapzend_*.deb /opt/workdir"

