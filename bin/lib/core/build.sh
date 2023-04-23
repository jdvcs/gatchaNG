#!/usr/bin/env bash

source "bin/init/env.sh"
export CGO_ENABLED=1
export GO386=softfloat

cd submodules/library
./build.sh || exit 1

mkdir -p "$PROJECT/V2rayNG/app/libs"
/bin/cp -f libv2ray.aar "$PROJECT/V2rayNG/app/libs"
