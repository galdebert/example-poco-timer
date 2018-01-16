conan install . -pr win64-vs15-release -if build/release
cmake -H. -Bbuild/release -G "Visual Studio 14 Win64"
cmake --build build/release --config Release
