cmake_minimum_required(VERSION 2.8)

project(oscc-direct-test)

include(oscc/api/OsccConfig.cmake)

add_executable(
    oscc-direct-test
    src/oscc_control_test.c
    oscc/api/src/oscc.c)

target_include_directories(
    oscc-direct-test
    PRIVATE
    include
    oscc/api/include
    ${SDL2_INCLUDE_DIRS})
