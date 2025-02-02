@echo off
rem This file is generated from build.pbat, all edits will be lost
set PATH=C:\Program Files\Git\cmd;C:\Program Files\CMake\bin;C:\mingw1310_64\bin;C:\Program Files\7-Zip;%PATH%
move /y C:\mingw64 C:\mingw64_
call pull-mingw
if not exist zlib (
    git clone https://github.com/madler/zlib.git
    pushd zlib
        git checkout v1.3.1
    popd
)
pushd zlib
    if not exist build mkdir build
    pushd build
        cmake -G "Ninja" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=C:/zlib-1.3.1 ..
        cmake --build .
        cmake --install .
    popd
popd
7z a -y zlib-1.3.1.zip C:\zlib-1.3.1