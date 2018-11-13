# Terratest Dockerfile

[![CircleCI](https://circleci.com/gh/NFhbar/docker-terratest.svg?style=svg)](https://circleci.com/gh/NFhbar/docker-terratest)

This repo contains a Docker image used to test AWS resources with Terratest, it includes:

- [Golang](https://golang.org/)
- [Dep](https://github.com/golang/dep)
- [Terraform](https://www.terraform.io/)

The image is hosted [here](https://hub.docker.com/r/nfhbar/docker-terratest/).

## How to use


## Tests
The image is tested using [Google's Container Structure Test](https://github.com/GoogleContainerTools/container-structure-test).

To run the tests, build the image locally first then run:
```
$ docker run -v /var/run/docker.sock:/var/run/docker.sock \
         -v ${PWD}:/src:ro gcr.io/gcp-runtimes/container-structure-test:latest \
         test --image docker-terratest \
         --config /src/tests/test_config.yaml
```

## Versioning
The image is built and pushed to Dockerhub by [CircleCI](https://circleci.com/gh/NFhbar/docker-terratest)
on changes to the `master` branch.
