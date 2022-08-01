cmake_minimum_required(VERSION 3.0.0)
project(  VERSION 3.10.2  )

include(CTest)
enable_testing()

add_library(   .cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
