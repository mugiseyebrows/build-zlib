@echo off
rem This file is generated from pull-zlib.pbat, all edits will be lost
set PATH=C:\Windows\System32;C:\Program Files\7-Zip;%PATH%
if not exist zlib-1.3.1.zip (
    echo downloading zlib-1.3.1.zip
    curl -L -o zlib-1.3.1.zip https://github.com/mugiseyebrows/build-zlib/releases/download/1.3.1/zlib-1.3.1.zip
)
7z x -y -oC:\zlib-1.3.1 zlib-1.3.1.zip