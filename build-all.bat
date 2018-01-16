conan install . -pr win64-vs15-release -if build/release --build=missing
conan install . -pr win64-vs15-debug -if build/debug --build=missing

cmake -H. -Bbuild/release -G "Visual Studio 14 Win64"
cmake -H. -Bbuild/debug -G "Visual Studio 14 Win64"

cmake --build build/release --config Release
cmake --build build/debug --config DEbug
