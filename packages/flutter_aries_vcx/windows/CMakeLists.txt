set(LibraryVersion "aries_vcx-v0.0.0") # generated; do not edit

# TODO Remove this workaround once Flutter supports Windows ARM.
# https://github.com/flutter/flutter/issues/116196
set(FLUTTER_TARGET_PLATFORM windows-x64)

# The Flutter tooling requires that developers have a version of Visual Studio
# installed that includes CMake 3.14 or later. You should not increase this
# version, as doing so will cause the plugin to fail to compile for some
# customers of the plugin.
cmake_minimum_required(VERSION 3.14)

# Project-level configuration.
set(PROJECT_NAME "flutter_aries_vcx")
project(${PROJECT_NAME} LANGUAGES CXX)

# Download the binaries if they are not already present.
set(AriesVcxLibRoot "${CMAKE_CURRENT_SOURCE_DIR}/${AriesVcxVersion}")
set(AriesVcxArchivePath "${AriesVcxLibRoot}.tar.gz")
if(NOT EXISTS ${AriesVcxArchivePath})
  file(DOWNLOAD
    "https://github.com/YourGitHubAccount/repo_name/releases/download/${AriesVcxVersion}/AriesVcx.tar.gz"
    ${AriesVcxArchivePath}
    TLS_VERIFY ON
  )
endif()

# Extract the binaries, overriding any already present.
file(REMOVE_RECURSE ${AriesVcxLibRoot})
file(MAKE_DIRECTORY ${AriesVcxLibRoot})
execute_process(
  COMMAND ${CMAKE_COMMAND} -E tar xzf ${AriesVcxArchivePath}
  WORKING_DIRECTORY ${AriesVcxLibRoot}
)

# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
set(flutter_aries_vcx_bundled_libraries
  "${AriesVcxLibRoot}/${FLUTTER_TARGET_PLATFORM}/aries_vcx.dll"
  PARENT_SCOPE
)
