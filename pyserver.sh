#!/usr/bin/bash

cd ./build/html
echo "Starting Python server"
python -m http.server -b localhost
