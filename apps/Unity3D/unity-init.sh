#!/bin/bash

# Unity3D preinstall
cd ~/

# Install Unity v1
# curl -O https://raw.githubusercontent.com/sttz/install-unity/legacy/install-unity.py && chmod +x install-unity.py
# ~/install-unity.py --package Unity --package iOS --package Android --package VisualStudio --save 2018.3.5f1

# Install Unity v2
curl -s https://api.github.com/repos/sttz/install-unity/releases/latest | grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d '"' | wget -qi - -O ~temp.zip
unzip -o ~temp.zip install-unity
rm ~temp.zip
