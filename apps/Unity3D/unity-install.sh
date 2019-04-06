#!/bin/bash

cd ~/.Unity3D

if [ -z "$1" ]; then
  echo -e "\nPlease call '$0 <major>.<minor> [{patch}{type}{build}]' to run this command!\n"
  exit 1
fi

if ! [ -z "$2" ]; then
  UNITY_PATCH=.$2
fi

UNITY_CONFIG_PATH=~/Library/Application\ Support/install-unity/
mkdir -p "$UNITY_CONFIG_PATH"
cp ./config.json "$UNITY_CONFIG_PATH"

UNITY_VERSION=$1
sudo ~/install-unity install -y -p Unity,iOS,Android "$UNITY_VERSION$UNITY_PATCH"

sudo ./unity-patcher "/Applications/Unity $UNITY_VERSION/Unity.app"
cp ./Unity_lic.ulf "/Library/Application Support/Unity/"
