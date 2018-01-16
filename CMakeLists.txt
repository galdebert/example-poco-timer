project(MyTimer)
set(CMAKE_CONFIGURATION_TYPES Debug Release)
cmake_minimum_required(VERSION 2.8.12)

add_definitions("-std=c++11")

# Classic cmake global variables approach
#include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
#conan_basic_setup()
#add_executable(timer timer.cpp)
#target_link_libraries(timer ${CONAN_LIBS}) # Classic cmake global variables approach

# Modern cmake targets approach
if(GA_MULTICONFIGS) # GA_MULTICONFIGS is passed using cmake -D"GA_MULTICONFIGS=1"
    include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
elseif()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

conan_basic_setup(TARGETS)
add_executable(timer timer.cpp)
target_link_libraries(timer CONAN_PKG::Poco)
