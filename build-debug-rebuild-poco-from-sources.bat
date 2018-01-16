conan install . -pr win64-vs15-debug -if build/debug --build Poco
cmake -H. -Bbuild/debug -G "Visual Studio 14 Win64"
cmake --build build/debug --config Debug
