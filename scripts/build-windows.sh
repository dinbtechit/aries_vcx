#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR
WINDOWS_BUILD_FOLDER=windows

# Install build dependencies
cargo install cargo-zigbuild
cargo install cargo-xwin

download_and_unzip_if_missed() {
    expected_directory="$1"
    url="$2"
    fname="tmp_$(date +%s)_$expected_directory.zip"
    if [ ! -d "${expected_directory}" ] ; then
        echo "Downloading ${GREEN}${url}${RESET} as ${GREEN}${fname}${RESET}"
        curl -o ${fname} "${url}"
        echo "Unzipping ${GREEN}${fname}${RESET}"
        unzip -qqo "${fname}"
        rm "${fname}"
        echo "${GREEN}Done!${RESET}"
    else
        echo "${BLUE}Skipping download ${url}${RESET}. Expected directory ${expected_directory} was found"
    fi
}

prepare_dependencies() {
    #TARGET_ARCH="$1"
    echo "prepare_dependencies >> TARGET_ARCH=${TARGET_ARCH}"
    mkdir -p $WINDOWS_BUILD_FOLDER
    pushd "${WINDOWS_BUILD_FOLDER}"
        download_and_unzip_if_missed "indy_deps" "https://repo.sovrin.org/windows/libindy/deps/indy-sdk-deps.zip"
        #download_and_unzip_if_missed "libsodium_$TARGET_ARCH" "https://repo.sovrin.org/android/libindy/deps/sodium/libsodium_$TARGET_ARCH.zip"
        #download_and_unzip_if_missed "libzmq_$TARGET_ARCH" "https://repo.sovrin.org/android/libindy/deps/zmq/libzmq_$TARGET_ARCH.zip"
    popd
}

setup_dependencies_env_vars(){
    #TARGET_ARCH="$1"

    export DEPS_DIR=$(pwd)/${WINDOWS_BUILD_FOLDER}/indy_deps

    export PKG_CONFIG_ALLOW_CROSS=1

    #export OPENSSL_DIR=${OPENSSL_DIR}
    export OPENSSL_LIB_DIR=${DEPS_DIR}/lib
    export OPENSSL_INCLUDE_DIR=${DEPS_DIR}/include
    #export OPENSSL_STATIC=1
    ls -la $DEPS_DIR

    export SODIUM_LIB_DIR=${DEPS_DIR}/lib
    export SODIUM_INCLUDE_DIR=${DEPS_DIR}/include

    export LIBZMQ_LIB_DIR=${DEPS_DIR}/lib
    export LIBZMQ_INCLUDE_DIR=${DEPS_DIR}/include
}

zig_build () {
    local TARGET="$1"
    local PLATFORM_NAME="$2"
    local LIBNAME="$3"
    rustup target add "$TARGET"
    cargo zigbuild --target "$TARGET" -r
    mkdir "$PLATFORM_NAME"
    cp "../target/$TARGET/release/$LIBNAME" "$PLATFORM_NAME/"
}

win_build () {
    local TARGET="$1"
    local PLATFORM_NAME="$2"
    local LIBNAME="$3"
    rustup target add "$TARGET"
    cargo xwin build --target "$TARGET" -r
    mkdir "$PLATFORM_NAME"
    cp "../target/$TARGET/release/$LIBNAME" "$PLATFORM_NAME/"
}

prepare_dependencies
setup_dependencies_env_vars

# Build all the dynamic libraries
WINDOWS_LIBNAME=aries_vcx.dll
win_build aarch64-pc-windows-msvc windows-arm64 $WINDOWS_LIBNAME
win_build x86_64-pc-windows-msvc windows-x64 $WINDOWS_LIBNAME

# Archive the dynamic libs
tar -czvf AriesVcx-windows.tar.gz windows-*

# Cleanup
rm -rf windows-*
