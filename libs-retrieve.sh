#!/bin/bash

mkdir -p tmp
mkdir -p force-app/libs

# retrieve the libraries metadata using the manifests and store it in a temporary directory
sf project retrieve start --manifest manifest/package-libs.xml --output-dir tmp --ignore-conflicts

# copy to ignored folder and clean up
cp -r tmp/* force-app/libs
rm -rf tmp

echo "Download has been completed. VS Code should now index the files in force-app/libs."