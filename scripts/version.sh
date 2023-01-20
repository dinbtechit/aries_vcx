#!/bin/bash

CURR_VERSION=aries_vcx-v`awk '/^version: /{print $2}' packages/aries_vcx/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_aries_vcx/ios/flutter_aries_vcx.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_aries_vcx/macos/flutter_aries_vcx.podspec
rm packages/flutter_aries_vcx/macos/*.bak packages/flutter_aries_vcx/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(AriesVcxVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_aries_vcx/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_aries_vcx/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_aries_vcx/
