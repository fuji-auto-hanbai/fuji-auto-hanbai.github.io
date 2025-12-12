#!/bin/bash
currentPath=${PWD}
cd "$currentPath"

rm -rf ../js
rm -rf ../img
rm -rf ../index.html
rm -rf ../favicon.png
rm -rf ../data

npm run build
cp -r ./dist/* ../