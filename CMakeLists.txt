cmake_minimum_required(VERSION 3.8)

# using CMAKE_MODULE_PATH + include(relative path)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "$ENV{GA_SCRIPTS}/cmake")
include(belit_utils)
include(belit_debug)

project(conan-example-poco-timer)

set(CMAKE_CONFIGURATION_TYPES Debug Release)

if(BELIT_MULTI_CONFIG) # BELIT_MULTI_CONFIG is passed using cmake -D"BELIT_MULTI_CONFIG=1"
    include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
else()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

conan_basic_setup(TARGETS)

add_executable(timer "")

belit_add_sources_dir(timer PRIVATE "${CMAKE_SOURCE_DIR}/src" "")

target_compile_features(timer PUBLIC cxx_std_11)

target_link_libraries(timer CONAN_PKG::Poco)
