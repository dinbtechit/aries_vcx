#!/bin/bash

# Setup
BUILD_DIR=platform-build
ANDROID_BUILD_FOLDER=android
mkdir $BUILD_DIR
cd $BUILD_DIR

# Create the jniLibs build directory
JNI_DIR=jniLibs
mkdir -p $JNI_DIR

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

generate_arch_flags(){
    if [ -z $1 ]; then
        echo STDERR "${RED}Please provide the arch e.g arm, armv7, x86 or arm64${RESET}"
        exit 1
    fi
    export ABSOLUTE_ARCH=$1
    export TARGET_ARCH=$1

    if [ $1 == "armv7" ]; then
        export TRIPLET="armv7-linux-androideabi"
        export CARGO_TARGET="armeabi-v7a"
    fi

    if [ $1 == "arm64" ]; then
        export TRIPLET="aarch64-linux-android"
        export CARGO_TARGET="arm64-v8a"
    fi

    if [ $1 == "x86" ]; then
        export TRIPLET="i686-linux-android"
        export CARGO_TARGET="x86"
    fi

    if [ $1 == "x86_64" ]; then
        export TRIPLET="x86_64-linux-android"
        export CARGO_TARGET="x86_64"
    fi

}

# Set up cargo-ndk
cargo install cargo-ndk

for TARGET in \
        arm64 armv7 x86_64 x86
do
    generate_arch_flags $TARGET
    prepare_dependencies $TARGET
    setup_dependencies_env_vars $TARGET

    rustup target add $TRIPLET
    # cargo build -r --target=$TARGET
    cargo ndk -o $JNI_DIR \
            --manifest-path ../Cargo.toml \
            -t $CARGO_TARGET \
            build --release
    # Copy additional Dependencies
    cp $LIBZMQ_LIB_DIR/libzmq.so $JNI_DIR/$CARGO_TARGET
    cp $SODIUM_LIB_DIR/libsodium.so $JNI_DIR/$CARGO_TARGET
done

#rustup target add \
#        aarch64-linux-android \
#        armv7-linux-androideabi \
#        x86_64-linux-android \
#        i686-linux-android

# Build the android libraries in the jniLibs directory
#cargo ndk -o $JNI_DIR \
#        --manifest-path ../Cargo.toml \
#        -t armeabi-v7a \
#        -t arm64-v8a \
#        -t x86 \
#        -t x86_64 \
#        build --release

# Archive the dynamic libs
cd $JNI_DIR
tar -czvf ../AriesvcxAndroid.tar.gz *
cd -

# Cleanup
rm -rf $JNI_DIR
