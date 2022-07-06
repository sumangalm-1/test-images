#!/bin/bash
docker build -f drone-git:linux-ppc64le -f ./docker/Dockerfile.linux.ppc64le .
docker tag drone/git:ppc64le sbm13/drone/git:ppc64le
docker push docker.io/sbm13/drone/git:linux-ppc64le
tar -cvf setup.tar /tmp/remote/greeting
