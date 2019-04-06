#!/bin/bash

cd ~/.Unity3D

if [ -z "$1" ]; then
    echo -e "\nPlease call '$0 <Unity3D version>' to run this command!\n"
    exit 1
fi

UNITY_VERSION=$1
sudo ~/install-unity install -y -p Unity,VisualStudio,iOS,Android "$UNITY_VERSION"

sudo ./unity-patcher "/Applications/Unity $UNITY_VERSION/Unity.app"
cp ./Unity_lic.ulf "/Applications/Unity $UNITY_VERSION/"
