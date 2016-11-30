NAME ?= 10print
TAG ?= latest
BUILDTAG = "${NAME}:${TAG}"


all: build docker 

build:
	 docker run --rm -v "${PWD}":/usr/src/myapp -w /usr/src/myapp golang:1.7 go build -o 10print main.go

docker: build
	docker build -t ${BUILDTAG} . 

clean:
	docker rmi ${BUILDTAG}

.PHONY: 10print docker clean
