#!/bin/sh -eu

mkdir -p /tmp/gpb
docker run -t --rm \
       -v "$PWD":/w \
       -v "$TMPDIR":/tmp \
       -w /w \
       alpine \
       /bin/sh -c '( apk update && apk upgrade && apk add protobuf ) >/dev/null && protoc '"$@"
