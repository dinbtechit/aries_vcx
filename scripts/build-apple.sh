#!/bin/bash

# Setup
BUILD_DIR=platform-build
OUTPUT_DIR=output
SCRIPT_DIR=scripts
mkdir $BUILD_DIR
cd $BUILD_DIR || return
BUILD_TYPE=$1


build_libzmq() {
    echo "ios/ci/build.sh: running build_libzmq()"
    if [ ! -d libzmq-ios ]; then
        git clone https://github.com/evernym/libzmq-ios.git libzmq-ios
    fi
    pushd libzmq-ios
      git restore .
    popd

    pushd libzmq-ios
        git checkout -- libzmq.rb
        git apply --ignore-space-change --ignore-whitespace ../../$SCRIPT_DIR/ios/libzmq.rb.patch
        ./libzmq.rb
    popd
}

# Build libsodium
build_libsodium() {
    if [ ! -d libsodium-ios ]; then
        git clone https://github.com/evernym/libsodium-ios.git libsodium-ios
    fi

    pushd libsodium-ios
    ./libsodium.rb
    popd

    # Check there is a fat file libsodium.a
    lipo -info libsodium-ios/dist/ios/lib/libsodium.a
}

build_crypto() {
    if [ ! -d OpenSSL-for-iPhone ]; then
        git clone https://github.com/x2on/OpenSSL-for-iPhone.git OpenSSL-for-iPhone
        cd OpenSSL-for-iPhone
        git checkout b77ace70b2594de69c88d0748326d2a1190bbac1
        cd -
    fi

    pushd OpenSSL-for-iPhone
    OPENSSL_VERSION=1.1.1s
    ./build-libssl.sh --version=$OPENSSL_VERSION
    popd

    # Check there is a fat file libssl.a
    lipo -info OpenSSL-for-iPhone/lib/libssl.a

    # Check there is a fat file libcrypto.a
    lipo -info OpenSSL-for-iPhone/lib/libcrypto.a
}

extract_architectures() {
    ARCHS="arm64 x86_64"
    FILE_PATH=$1
    LIB_FILE_NAME=$2
    LIB_NAME=$3
    echo "ios/ci/build.sh: running extract_architectures() FILE_PATH=${FILE_PATH} LIB_FILE_NAME=${LIB_FILE_NAME} LIB_NAME=${LIB_NAME}"

    echo FILE_PATH=$FILE_PATH
    echo LIB_FILE_NAME=$LIB_FILE_NAME

    mkdir -p $OUTPUT_DIR/libs
    pushd $OUTPUT_DIR/libs
        echo "Extracting architectures for $LIB_FILE_NAME..."
        lipo -info $FILE_PATH
        for ARCH in ${ARCHS[*]}; do
            DESTINATION=${LIB_NAME}/${ARCH}

            echo "Destination $DESTINATION"

            mkdir -p $DESTINATION
            pwd;
            lipo -extract ${ARCH} $FILE_PATH -o $DESTINATION/$LIB_FILE_NAME-fat.a
            lipo $DESTINATION/$LIB_FILE_NAME-fat.a -thin $ARCH -output $DESTINATION/$LIB_FILE_NAME.a
            rm $DESTINATION/$LIB_FILE_NAME-fat.a
        done
    popd
}

if [ "$BUILD_TYPE" == "macos" ]; then
 build_crypto
 #build_libsodium
 #build_libzmq

 extract_architectures "$(pwd)"/OpenSSL-for-iPhone/lib/libssl.a libssl openssl
 extract_architectures "$(pwd)"/OpenSSL-for-iPhone/lib/libcrypto.a libcrypto openssl
 #extract_architectures "$(pwd)"/libzmq-ios/dist/ios/lib/libzmq.a libzmq zmq
 #extract_architectures "$(pwd)"/libsodium-ios/dist/ios/lib/libsodium.a libsodium sodium
 #extract_architectures ../../OpenSSL-for-iPhone/lib/libssl-iOS-Sim.a libssl openssl-sim
 #extract_architectures ../../OpenSSL-for-iPhone/lib/libcrypto-iOS-Sim.a libcrypto openssl-sim
fi
#aarch64-apple-ios aarch64-apple-ios-sim aarch64-apple-darwin \
 #        x86_64-apple-ios x86_64-apple-darwin
# Build static libs
ARCHS="aarch64-apple-ios aarch64-apple-ios-sim x86_64-apple-ios"

if [ "$BUILD_TYPE" == "macos" ]; then
  #ARCHS="aarch64-apple-darwin x86_64-apple-darwin x86_64-apple-ios aarch64-apple-ios"
  ARCHS="x86_64-apple-ios"
fi

for TARGET in $ARCHS
do
    echo "#############################"
    pwd
    echo "#############################"
    rustup target add "$TARGET"

    #export OPENSSL_DIR=/opt/local
    #export OPENSSL_INCLUDE_DIR=/opt/local/include/
    #export OPENSSL_LIB_DIR=/opt/local/lib/
    #export SODIUM_LIB_DIR=/opt/local/lib/
    #export SODIUM_INCLUDE_DIR=/opt/local/include
    #export LIBZMQ_LIB_DIR=/opt/local/lib/
    #export LIBZMQ_INCLUDE_DIR=/opt/local/include
    export PKG_CONFIG_ALLOW_CROSS=1
    export PKG_CONFIG_SYSROOT_DIR=/
    export RUST_BACKTRACE=1

    if [ $TARGET == "aarch64-apple-ios" ]; then
      export OPENSSL_LIB_DIR=$(pwd)/output/libs/openssl/arm64
      export OPENSSL_INCLUDE_DIR=$(pwd)/OpenSSL-for-iPhone/bin/iPhoneOS16.2-arm64.sdk/include
    fi
    if [ $TARGET == "aarch64-apple-ios-sim" ]; then
      export OPENSSL_LIB_DIR=$(pwd)/output/libs/openssl-sim/arm64
      export OPENSSL_INCLUDE_DIR=$(pwd)/OpenSSL-for-iPhone/bin/iPhoneSimulator16.2-arm64.sdk/include
      #export OPENSSL_INCLUDE_DIR=/Users/srinivad/code/personal/aries_vcx/platform-build/OpenSSL-for-iPhone/include
      #export SODIUM_LIB_DIR=/Users/srinivad/code/personal/aries_vcx/platform-build/output/libs/sodium/arm64
      #export SODIUM_INCLUDE_DIR=/Users/srinivad/code/personal/aries_vcx/platform-build/libsodium-ios/dist/ios/include
      unset SODIUM_LIB_DIR
      unset SODIUM_INCLUDE_DIR
      export LIBZMQ_LIB_DIR=$(pwd)/libzmq-ios/build/iOS-arm64/lib
      export LIBZMQ_INCLUDE_DIR=$(pwd)/libzmq-ios/build/zeromq/include
      #unset LIBZMQ_INCLUDE_DIR
    fi
    if [ $TARGET == "x86_64-apple-ios" ]; then
        echo "###########################"
        echo "Inside....."
        echo "###########################"
        #export OPENSSL_DIR=/opt/local
        #export OPENSSL_INCLUDE_DIR=/opt/local/include/
        #export OPENSSL_LIB_DIR=/opt/local/lib/
        BASE_DIR=$(dirname "$(pwd)")
        export OPENSSL_LIB_DIR=$(pwd)/output/libs/openssl/x86_64
        export OPENSSL_INCLUDE_DIR=$(pwd)/OpenSSL-for-iPhone/bin/iPhoneSimulator16.2-x86_64.sdk/include
        export SODIUM_LIB_DIR=$BASE_DIR/libs/apple/ios/sodium/x86_64/lib
        export SODIUM_INCLUDE_DIR=$BASE_DIR/libs/apple/ios/sodium/x86_64/include
#        if [ "$(uname -m)" == "arm64" ];then
          export LIBZMQ_LIB_DIR=$BASE_DIR/libs/apple/ios/zmq/x86_64/lib
          export LIBZMQ_INCLUDE_DIR=$BASE_DIR/libs/apple/ios/zmq/x86_64/include
#        fi

    fi

    cargo build -r --target=$TARGET
done

exit 0

# Create XCFramework zip
FRAMEWORK="AriesVcx.xcframework"
LIBNAME=libaries_vcx.a
mkdir mac-lipo ios-sim-lipo
IOS_SIM_LIPO=ios-sim-lipo/$LIBNAME
MAC_LIPO=mac-lipo/$LIBNAME
lipo -create -output $IOS_SIM_LIPO \
        ../target/aarch64-apple-ios-sim/release/$LIBNAME \
        ../target/x86_64-apple-ios/release/$LIBNAME
lipo -create -output $MAC_LIPO \
        ../target/aarch64-apple-darwin/release/$LIBNAME \
        ../target/x86_64-apple-darwin/release/$LIBNAME
xcodebuild -create-xcframework \
        -library $IOS_SIM_LIPO \
        -library $MAC_LIPO \
        -library ../target/aarch64-apple-ios/release/$LIBNAME \
        -output $FRAMEWORK
zip -r $FRAMEWORK.zip $FRAMEWORK

# Cleanup
rm -rf ios-sim-lipo mac-lipo $FRAMEWORK


