#!/bin/bash

pushd submodules/library
git fetch origin main || exit 1
git reset origin/main --hard
popd

pushd submodules/core
git fetch origin main || exit 1
git reset origin/main --hard
popd

git add .
