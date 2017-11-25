#!/usr/bin/env bash -l

# WORKAROUND for WSL umask problem: https://github.com/Microsoft/WSL/issues/352

# Note: Bash on Windows does not currently apply umask properly.
if [ "$(umask)" = "0000" ]; then
  echo "umask 022" >> ~/.bashrc
fi
