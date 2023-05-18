#!/bin/bash

set -eu -o pipefail
mvn -B clean install
mvn -P compressXZ -f weasis-distributions clean package
mkdir archive
unzip -d archive weasis-distributions/target/native-dist/weasis-native.zip
archive/build/script/package-weasis.sh --no-installer --jdk $JAVA_HOME