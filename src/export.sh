#!/bin/bash
currentPath=${PWD}
cd "$currentPath"

rm -rf ../assets
rm -rf ../fonts
rm -rf ../img
rm -rf ../index.html
rm -rf ../favicon.png
rm -rf ../data

npm run build
cp -r ./data ./dist/
cp -r ./dist/* ../