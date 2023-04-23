#!/usr/bin/env bash

source "bin/init/env.sh"

[ -f submodules/library/go.mod ] || git submodule update --init submodules/library || exit 1
cd submodules/library
git reset --hard && git clean -fdx

./init.sh || exit 1
