conan install . -pr win64-vs15-debug -if build/debug
cmake -H. -Bbuild/debug -G "Visual Studio 15 2017 Win64"
cmake --build build/debug --config Debug
