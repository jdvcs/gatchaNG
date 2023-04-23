#!/bin/bash

source "bin/init/env.sh"

rm -rf V2rayNG/app/build/outputs
./gradlew --stop
./gradlew :app:assembleRelease
