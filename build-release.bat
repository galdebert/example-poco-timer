conan install . -pr win64-vs15-release -if build/release
cmake -H. -Bbuild/release -G "Visual Studio 15 2017 Win64"
cmake --build build/release --config Release
