#!/usr/bin/env bash
echo "Building documentation for pytmpdir!"
echo "Removing old documentation in build folder."
rmdir -rf build
echo "Updating module rst files.  This will overwrite old rst files."
cd ../pytmpdir
sphinx-apidoc -f -o ../docs/source .
echo "Build HTML files."
cd ../docs
sphinx-build -b html source build
echo "Opening created documentation..."
start build\index.html