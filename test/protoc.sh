#!/bin/sh -eu

docker run -it --rm \
       -v "$PWD":/w \
       -w /w \
       alpine \
       /bin/sh -c 'apk update && apk upgrade && apk add protobuf && protoc '"$@"
