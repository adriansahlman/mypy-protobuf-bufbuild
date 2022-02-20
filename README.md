# mypy-protobuf-bufbuild
This repository contains files for creating a [bufbuild](https://buf.build) plugin from [mypy-protobuf](https://github.com/nipunn1313/mypy-protobuf).

The default address for the plugin is buf.build/adriansahlman/plugins/mypy-protobuf.

To use the plugin with buf simply add the plugin to your `buf.gen.yaml` file. Here is an example of a config that
generates protobuf, grpc and typing stubs to the directory `./gen`.
```yaml
version: v1
plugins:
  - remote: buf.build/grpc/plugins/python:v1.44.0-1
    opt: paths=source_relative
  - remote: buf.build/protocolbuffers/plugins/python:v3.19.3-1
    out: gen
  - remote: buf.build/adriansahlman/plugins/mypy-protobuf:v3.2.0-1
    out: gen
```
