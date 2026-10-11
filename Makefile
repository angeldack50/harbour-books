.RECIPEPREFIX := >

IMAGE_URI ?= harbour-books
IMAGE_TAG ?= local

.PHONY: lint build run push

lint:
> docker run --rm -i hadolint/hadolint:v2.12.0 < Dockerfile || true

build: lint
> docker build -t $(IMAGE_URI):$(IMAGE_TAG) .

run:
> docker run --rm -p 127.0.0.1:8082:8000 $(IMAGE_URI):$(IMAGE_TAG)

push:
> docker push $(IMAGE_URI):$(IMAGE_TAG)