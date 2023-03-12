#!/bin/bash
cd ..
git clone https://github.com/overleaf/toolkit.git ./overleaf-toolkit

# Move the setup script to the overleaf-toolkit directory
mv ./overleaf/setup.bash ./overleaf-toolkit/setup.bash
mv ./overleaf/start.bash ./overleaf-toolkit/start.bash
mv ./overleaf/stop.bash ./overleaf-toolkit/stop.bash

# Remove the old directory
rm -rf ./overleaf

# Rename the overleaf-toolkit directory
mv ./overleaf-toolkit ./overleaf

# Setup overleaf
cd ./overleaf
bin/init
bin/up