#!/usr/bin/env bash -l

# NOTE:
# - Run System Update FIRST to fix https://forums.developer.apple.com/thread/84593
# - Login to AppStore to install desktop apps.

# Skip if already install
UPDATE_FILE=~/update-dotfiles.sh
if [ ! -f $UPDATE_FILE ]; then
  # Install all updates that are recommended for your system
  sudo softwareupdate -i -r

  # Install all updates that are applicable to your system,
  # sudo softwareupdate -i -a

  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" --verbose
  rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
fi
