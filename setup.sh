#!/bin/bash
# Dependencies for Helios-Commerce-Cloud

echo "--- Install dependencies ---"

# NebulaLogger
sf package install --wait 20 --security-type AdminsOnly --package 04tg70000004jmXAAQ

# Apex Validate
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9vEIAS

# Apex Functions
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9vOIAS

# Apex Enumerables
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9vTIAS

# Apex Streams
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9vYIAS

# Apex Sequences
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9vdIAC

# Apex Common Functions Core
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9viIAC

# Apex Common Functions Extension
sf package install --wait 20 --security-type AdminsOnly --package 04tJ5000000D9w7IAC

echo "--- All libraries installed! ---"