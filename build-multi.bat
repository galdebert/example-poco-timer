conan install . -g cmake_multi -pr win64-vs15-release -if build/multi --build=missing
conan install . -g cmake_multi -pr win64-vs15-debug   -if build/multi --build=missing

cmake -H. -Bbuild/multi -G "Visual Studio 15 2017 Win64" -D"BELIT_MULTI_CONFIG=1"

REM cmake --build build/multi --config Release
REM cmake --build build/multi --config Debug
