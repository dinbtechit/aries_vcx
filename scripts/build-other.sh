#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir -p $BUILD_DIR
cd $BUILD_DIR || return

# Install build dependencies
cargo install cargo-zigbuild
cargo install cargo-xwin

zig_build () {
    local TARGET="$1"
    local PLATFORM_NAME="$2"
    local LIBNAME="$3"
    set_env "$TARGET"
    rustup target add "$TARGET"
    #cargo zigbuild --target "$TARGET" -r
    cargo build --target "$TARGET" -r
    mkdir "$PLATFORM_NAME"
    cp "../target/$TARGET/release/$LIBNAME" "$PLATFORM_NAME/"
    tar -czvf AriesVcx-"$PLATFORM_NAME".tar.gz linux-*
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

set_env() {
  local TARGET="$1"
  local PLATFORM="aarch64-linux-gnu"

  if [ "$TARGET" == "x86_64-unknown-linux-gnu" ]; then
    PLATFORM="x86_64-linux-gnu"
  fi

  ls -la /usr/lib/$PLATFORM

  export OPENSSL_LIB_DIR=/usr/lib/$PLATFORM
  export OPENSSL_INCLUDE_DIR=/usr/include
  export SODIUM_LIB_DIR=/usr/lib/$PLATFORM
  export SODIUM_INCLUDE_DIR=/usr/include
  export LIBZMQ_LIB_DIR=/usr/lib/$PLATFORM
  export LIBZMQ_INCLUDE_DIR=/usr/include
  export PKG_CONFIG_ALLOW_CROSS=1
  export PKG_CONFIG_PATH=/usr/lib/$PLATFORM/pkgconfig
  #export PKG_CONFIG_SYSROOT_DIR=/
  export RUST_BACKTRACE=1
}

# Build all the dynamic libraries
LINUX_LIBNAME=libaries_vcx.so

#export OPENSSL_LIB_DIR=/usr/lib/aarch64-linux-gnu
#export OPENSSL_INCLUDE_DIR=/usr/include
#export SODIUM_LIB_DIR=/usr/lib/aarch64-linux-gnu
#export SODIUM_INCLUDE_DIR=/usr/include
#export LIBZMQ_LIB_DIR=/usr/lib/aarch64-linux-gnu
#export LIBZMQ_INCLUDE_DIR=/usr/include
#export PKG_CONFIG_ALLOW_CROSS=1
#export PKG_CONFIG_PATH=/usr/lib/aarch64-linux-gnu/pkgconfig
#export PKG_CONFIG_SYSROOT_DIR=/
#export RUST_BACKTRACE=1

PROCESSOR_TYPE=$(uname -p)

echo "#######################"
echo "$PROCESSOR_TYPE"
echo "#######################"

if [ "$PROCESSOR_TYPE" == "aarch64" ]; then
  zig_build aarch64-unknown-linux-gnu linux-arm64 $LINUX_LIBNAME
  rm -rf linux-*
elif [ "$PROCESSOR_TYPE" == "x86_64" ]; then
   zig_build x86_64-unknown-linux-gnu linux-x64 $LINUX_LIBNAME
   rm -rf linux-*
else
  echo "Unsupported Architecture, $PROCESSOR_TYPE $(uname -a)"
  exit 1
fi

# WINDOWS_LIBNAME=aries_vcx.dll
# win_build aarch64-pc-windows-msvc windows-arm64 $WINDOWS_LIBNAME
# win_build x86_64-pc-windows-msvc windows-x64 $WINDOWS_LIBNAME

# Archive the dynamic libs
#tar -czvf AriesVcx.tar.gz linux-* windows-*
#tar -czvf AriesVcx-linux.tar.gz linux-*

# Cleanup
#rm -rf linux-* windows-*
#rm -rf linux-*
