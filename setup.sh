#!/bin/bash
# Dependencies for Helios-Commerce-Cloud

echo "--- Install dependencies ---"

PACKAGES=(
    "04tg70000004jmXAAQ" # NebulaLogger
    "04tJ5000000D9vEIAS" # Apex Validate
    "04tJ5000000D9vOIAS" # Apex Functions
    "04tJ5000000D9vTIAS" # Apex Enumerables
    "04tJ5000000D9vYIAS" # Apex Streams
    "04tJ5000000D9vdIAC" # Apex Sequences
    "04tJ5000000D9viIAC" # Apex Common Functions Core
    "04tJ5000000D9w7IAC" # Apex Common Functions Extension
)

for pkg in "${PACKAGES[@]}"
do
    echo "Instaluję pakiet: $pkg"
    sf package install --wait 20 --security-type AdminsOnly --package "$pkg"
done

echo "--- All libraries installed! ---"