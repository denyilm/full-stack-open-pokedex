#!/bin/bash

echo "Build script"

# add the commands here

npm install

# Install webpack globally
npm install -g webpack webpack-cli

npm install --save-dev cypress

npm run build