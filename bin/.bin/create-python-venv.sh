#!/usr/bin/bash

# Create the venv project directory
mkdir ./$1
cd ./$1

# Create the venv
python3 -m venv venv

# Create package
mkdir ./package
touch ./package/__init__.py

# Enable venv
source venv/bin/activate
