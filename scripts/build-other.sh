#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR
ANDROID_BUILD_FOLDER=android

# Install build dependencies
cargo install cargo-zigbuild
cargo install cargo-xwin

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

#export OPENSSL_INCLUDE_DIR=/usr/include
#export OPENSSL_LIB_DIR=/usr/lib
#export SODIUM_LIB_DIR=/usr/lib
#export SODIUM_INCLUDE_DIR=/usr/include
#export LIBZMQ_LIB_DIR=/usr/lib
#export LIBZMQ_INCLUDE_DIR=/usr/include
#export PKG_CONFIG_ALLOW_CROSS=1
#export PKG_CONFIG_SYSROOT_DIR=/
#export RUST_BACKTRACE=1
#
#ls -la /usr/lib
#ls -la /usr/include

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
    TARGET_ARCH="$1"
    echo "prepare_dependencies >> TARGET_ARCH=${TARGET_ARCH}"
    mkdir -p $ANDROID_BUILD_FOLDER
    pushd "${ANDROID_BUILD_FOLDER}"
        download_and_unzip_if_missed "openssl_$TARGET_ARCH" "https://repo.sovrin.org/android/libindy/deps/openssl/openssl_$TARGET_ARCH.zip"
        download_and_unzip_if_missed "libsodium_$TARGET_ARCH" "https://repo.sovrin.org/android/libindy/deps/sodium/libsodium_$TARGET_ARCH.zip"
        download_and_unzip_if_missed "libzmq_$TARGET_ARCH" "https://repo.sovrin.org/android/libindy/deps/zmq/libzmq_$TARGET_ARCH.zip"
    popd
}

setup_dependencies_env_vars(){
    TARGET_ARCH="$1"

    export OPENSSL_DIR=$(pwd)/${ANDROID_BUILD_FOLDER}/openssl_$TARGET_ARCH
    export SODIUM_DIR=$(pwd)/${ANDROID_BUILD_FOLDER}/libsodium_$TARGET_ARCH
    export LIBZMQ_DIR=$(pwd)/${ANDROID_BUILD_FOLDER}/libzmq_$TARGET_ARCH

    export PKG_CONFIG_ALLOW_CROSS=1

    #export OPENSSL_DIR=${OPENSSL_DIR}
    export OPENSSL_LIB_DIR=${OPENSSL_DIR}/lib
    export OPENSSL_INCLUDE_DIR=${OPENSSL_DIR}/include
    #export OPENSSL_STATIC=1
    ls -la $OPENSSL_LIB_DIR

    export SODIUM_LIB_DIR=${SODIUM_DIR}/lib
    export SODIUM_INCLUDE_DIR=${SODIUM_DIR}/include

    export LIBZMQ_LIB_DIR=${LIBZMQ_DIR}/lib
    export LIBZMQ_INCLUDE_DIR=${LIBZMQ_DIR}/include
}

# Build all the dynamic libraries
LINUX_LIBNAME=libaries_vcx.so

TARGET=arm64
generate_arch_flags $TARGET
prepare_dependencies $TARGET
setup_dependencies_env_vars $TARGET
zig_build aarch64-unknown-linux-gnu linux-arm64 $LINUX_LIBNAME

TARGET=x86_64
generate_arch_flags $TARGET
prepare_dependencies $TARGET
setup_dependencies_env_vars $TARGET
zig_build x86_64-unknown-linux-gnu linux-x64 $LINUX_LIBNAME

# WINDOWS_LIBNAME=aries_vcx.dll
# win_build aarch64-pc-windows-msvc windows-arm64 $WINDOWS_LIBNAME
# win_build x86_64-pc-windows-msvc windows-x64 $WINDOWS_LIBNAME

# Archive the dynamic libs
#tar -czvf AriesVcx.tar.gz linux-* windows-*
tar -czvf AriesVcx-linux.tar.gz linux-*

# Cleanup
#rm -rf linux-* windows-*
rm -rf linux-*
