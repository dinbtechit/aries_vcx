#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR

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
ls -la /usr/lib
ls -la /usr/include

sudo apt-get update -y
sudo apt-get install -y libssl-dev libzmq3-dev

# Build all the dynamic libraries
LINUX_LIBNAME=libaries_vcx.so
# TODO Figureout a way to build for arm64
# zig_build aarch64-unknown-linux-gnu linux-arm64 $LINUX_LIBNAME
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
