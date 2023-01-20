# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_aries_vcx_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_aries_vcx SHARED
  "flutter_aries_vcx.c"
)

set_target_properties(flutter_aries_vcx PROPERTIES
  PUBLIC_HEADER flutter_aries_vcx.h
  OUTPUT_NAME "flutter_aries_vcx"
)

target_compile_definitions(flutter_aries_vcx PUBLIC DART_SHARED_LIB)
