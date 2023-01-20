set(AriesVcxVersion "aries_vcx-v0.0.0") # generated; do not edit

# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "flutter_aries_vcx")
project(${PROJECT_NAME} LANGUAGES CXX)

# Download the binaries if they are not already present.
set(AriesVcxLibRoot "${CMAKE_CURRENT_SOURCE_DIR}/${AriesVcxVersion}")
set(AriesVcxArchivePath "${AriesVcxLibRoot}.tar.gz")
if(NOT EXISTS ${AriesVcxArchivePath})
  file(DOWNLOAD
    "https://github.com/dinbtechit/aries_vcx/releases/download/${AriesVcxVersion}/AriesVcx.tar.gz"
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
  "${AriesVcxLibRoot}/${FLUTTER_TARGET_PLATFORM}/libaries_vcx.so"
  PARENT_SCOPE
)
