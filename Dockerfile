FROM python:3.8-slim

ARG VERSION=3.3.0

RUN pip install mypy-protobuf==${VERSION}

ENTRYPOINT ["protoc-gen-mypy"]
