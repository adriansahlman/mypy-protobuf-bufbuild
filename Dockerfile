FROM python:3.7-slim

ARG VERSION=3.2.0

RUN pip install mypy-protobuf==${VERSION}

ENTRYPOINT ["protoc-gen-mypy"]
