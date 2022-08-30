.PHONY: build push

BUF_URL = plugins.buf.build/adriansahlman/mypy-protobuf

PLUGIN_VERSION = 3.3.0
BUF_VERSION = 1

DOCKER_FILE   := Dockerfile
DOCKER_NAME   := ${BUF_URL}
DOCKER_TAG    := v${PLUGIN_VERSION}-${BUF_VERSION}
DOCKER_IMG    := ${DOCKER_NAME}:${DOCKER_TAG}

build :
	docker build --build-arg VERSION=${PLUGIN_VERSION} -t ${DOCKER_IMG} -f ${DOCKER_FILE} .

push : build
	docker push ${DOCKER_IMG}
