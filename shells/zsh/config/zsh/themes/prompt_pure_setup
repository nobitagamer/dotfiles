#!/usr/bin/env zsh
#
# Spaceship ZSH Theme
#
# Author: Denys Dovhan, denysdovhan.com
# License: MIT
# https://github.com/denysdovhan/spaceship-zsh-theme

# ------------------------------------------------------------------------------
# CONFIGURATION
# The default configuration that can be overridden in .zshrc
# ------------------------------------------------------------------------------

NEWLINE='
'

# ORDER
if [ ! -n "$SPACESHIP_PROMPT_ORDER" ]; then
  SPACESHIP_PROMPT_ORDER=(
    # time
    # user
    # host
    # dir
    # git
    hg
    package
    node
    ruby
    elixir
    xcode
    swift
    golang
    php
    rust
    haskell
    julia
    docker
    aws
    venv
    conda
    pyenv
    dotnet
    ember
    kubecontext
    time
    # exec_time
    # line_sep
    # battery
    # vi_mode
    # jobs
    # exit_code
    # char
  )
fi

# PROMPT
SPACESHIP_PROMPT_SYMBOL="${SPACESHIP_PROMPT_SYMBOL:="➜"}"
SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE:=true}"
SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE:=true}"
SPACESHIP_PROMPT_PREFIXES_SHOW="${SPACESHIP_PROMPT_PREFIXES_SHOW:=true}"
SPACESHIP_PROMPT_SUFFIXES_SHOW="${SPACESHIP_PROMPT_SUFFIXES_SHOW:=true}"
SPACESHIP_PROMPT_DEFAULT_PREFIX="${SPACESHIP_PROMPT_DEFAULT_PREFIX:="via "}"
SPACESHIP_PROMPT_DEFAULT_SUFFIX="${SPACESHIP_PROMPT_DEFAULT_SUFFIX:=" "}"

# TIME
SPACESHIP_TIME_SHOW="${SPACESHIP_TIME_SHOW:=false}"
SPACESHIP_TIME_PREFIX="${SPACESHIP_TIME_PREFIX:="at "}"
SPACESHIP_TIME_SUFFIX="${SPACESHIP_TIME_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_TIME_FORMAT="${SPACESHIP_TIME_FORMAT:=false}"
SPACESHIP_TIME_12HR="${SPACESHIP_TIME_12HR:=false}"
SPACESHIP_TIME_COLOR="${SPACESHIP_TIME_COLOR:="yellow"}"

# USER
SPACESHIP_USER_SHOW="${SPACESHIP_USER_SHOW:=true}"
SPACESHIP_USER_PREFIX="${SPACESHIP_USER_PREFIX:="with "}"
SPACESHIP_USER_SUFFIX="${SPACESHIP_USER_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_USER_COLOR="${SPACESHIP_USER_COLOR:="yellow"}"
SPACESHIP_USER_COLOR_ROOT="${SPACESHIP_USER_COLOR_ROOT:="red"}"

# HOST
SPACESHIP_HOST_SHOW="${SPACESHIP_HOST_SHOW:=true}"
SPACESHIP_HOST_PREFIX="${SPACESHIP_HOST_PREFIX:="at "}"
SPACESHIP_HOST_SUFFIX="${SPACESHIP_HOST_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_HOST_COLOR="${SPACESHIP_HOST_COLOR:="green"}"

# DIR
SPACESHIP_DIR_SHOW="${SPACESHIP_DIR_SHOW:=true}"
SPACESHIP_DIR_PREFIX="${SPACESHIP_DIR_PREFIX:="in "}"
SPACESHIP_DIR_SUFFIX="${SPACESHIP_DIR_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_DIR_TRUNC="${SPACESHIP_DIR_TRUNC:=3}"
SPACESHIP_DIR_COLOR="${SPACESHIP_DIR_COLOR:="cyan"}"

# GIT
SPACESHIP_GIT_SHOW="${SPACESHIP_GIT_SHOW:=true}"
SPACESHIP_GIT_PREFIX="${SPACESHIP_GIT_PREFIX:="on "}"
SPACESHIP_GIT_SUFFIX="${SPACESHIP_GIT_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_GIT_SYMBOL="${SPACESHIP_GIT_SYMBOL:=" "}"
# GIT BRANCH
SPACESHIP_GIT_BRANCH_SHOW="${SPACESHIP_GIT_BRANCH_SHOW:=true}"
SPACESHIP_GIT_BRANCH_PREFIX="${SPACESHIP_GIT_BRANCH_PREFIX:="$SPACESHIP_GIT_SYMBOL"}"
SPACESHIP_GIT_BRANCH_SUFFIX="${SPACESHIP_GIT_BRANCH_SUFFIX:=""}"
SPACESHIP_GIT_BRANCH_COLOR="${SPACESHIP_GIT_BRANCH_COLOR:="magenta"}"
# GIT STATUS
SPACESHIP_GIT_STATUS_SHOW="${SPACESHIP_GIT_STATUS_SHOW:=true}"
SPACESHIP_GIT_STATUS_PREFIX="${SPACESHIP_GIT_STATUS_PREFIX:=" ["}"
SPACESHIP_GIT_STATUS_SUFFIX="${SPACESHIP_GIT_STATUS_SUFFIX:="]"}"
SPACESHIP_GIT_STATUS_COLOR="${SPACESHIP_GIT_STATUS_COLOR:="red"}"
SPACESHIP_GIT_STATUS_UNTRACKED="${SPACESHIP_GIT_STATUS_UNTRACKED:="?"}"
SPACESHIP_GIT_STATUS_ADDED="${SPACESHIP_GIT_STATUS_ADDED:="+"}"
SPACESHIP_GIT_STATUS_MODIFIED="${SPACESHIP_GIT_STATUS_MODIFIED:="!"}"
SPACESHIP_GIT_STATUS_RENAMED="${SPACESHIP_GIT_STATUS_RENAMED:="»"}"
SPACESHIP_GIT_STATUS_DELETED="${SPACESHIP_GIT_STATUS_DELETED:="✘"}"
SPACESHIP_GIT_STATUS_STASHED="${SPACESHIP_GIT_STATUS_STASHED:="$"}"
SPACESHIP_GIT_STATUS_UNMERGED="${SPACESHIP_GIT_STATUS_UNMERGED:="="}"
SPACESHIP_GIT_STATUS_AHEAD="${SPACESHIP_GIT_STATUS_AHEAD:="⇡"}"
SPACESHIP_GIT_STATUS_BEHIND="${SPACESHIP_GIT_STATUS_BEHIND:="⇣"}"
SPACESHIP_GIT_STATUS_DIVERGED="${SPACESHIP_GIT_STATUS_DIVERGED:="⇕"}"

# MERCURIAL
SPACESHIP_HG_SHOW="${SPACESHIP_HG_SHOW:=true}"
SPACESHIP_HG_PREFIX="${SPACESHIP_HG_PREFIX:="on "}"
SPACESHIP_HG_SUFFIX="${SPACESHIP_HG_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_HG_SYMBOL="${SPACESHIP_HG_SYMBOL:="☿ "}"
# MERCURIAL BRANCH
SPACESHIP_HG_BRANCH_SHOW="${SPACESHIP_HG_BRANCH_SHOW:=true}"
SPACESHIP_HG_BRANCH_PREFIX="${SPACESHIP_HG_BRANCH_PREFIX:="$SPACESHIP_HG_SYMBOL"}"
SPACESHIP_HG_BRANCH_SUFFIX="${SPACESHIP_HG_BRANCH_SUFFIX:=""}"
SPACESHIP_HG_BRANCH_COLOR="${SPACESHIP_HG_BRANCH_COLOR:="magenta"}"
# MERCURIAL STATUS
SPACESHIP_HG_STATUS_SHOW="${SPACESHIP_HG_STATUS_SHOW:=true}"
SPACESHIP_HG_STATUS_PREFIX="${SPACESHIP_HG_STATUS_PREFIX:=" ["}"
SPACESHIP_HG_STATUS_SUFFIX="${SPACESHIP_HG_STATUS_SUFFIX:="]"}"
SPACESHIP_HG_STATUS_COLOR="${SPACESHIP_HG_STATUS_COLOR:="red"}"
SPACESHIP_HG_STATUS_UNTRACKED="${SPACESHIP_HG_STATUS_UNTRACKED:="?"}"
SPACESHIP_HG_STATUS_ADDED="${SPACESHIP_HG_STATUS_ADDED:="+"}"
SPACESHIP_HG_STATUS_MODIFIED="${SPACESHIP_HG_STATUD_MODIFIED:="!"}"
SPACESHIP_HG_STATUS_DELETED="${SPACESHIP_HG_STATUS_DELETED:="✘"}"

# PACKAGE
SPACESHIP_PACKAGE_SHOW="${SPACESHIP_PACKAGE_SHOW:=true}"
SPACESHIP_PACKAGE_PREFIX="${SPACESHIP_PACKAGE_PREFIX:="is "}"
SPACESHIP_PACKAGE_SUFFIX="${SPACESHIP_PACKAGE_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PACKAGE_SYMBOL="${SPACESHIP_PACKAGE_SYMBOL:="📦 "}"
SPACESHIP_PACKAGE_COLOR="${SPACESHIP_PACKAGE_COLOR:="red"}"

# NODE
SPACESHIP_NODE_SHOW="${SPACESHIP_NODE_SHOW:=true}"
SPACESHIP_NODE_PREFIX="${SPACESHIP_NODE_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_NODE_SUFFIX="${SPACESHIP_NODE_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_NODE_SYMBOL="${SPACESHIP_NODE_SYMBOL:="⬢ "}"
SPACESHIP_NODE_DEFAULT_VERSION="${SPACESHIP_NODE_DEFAULT_VERSION:=""}"
SPACESHIP_NODE_COLOR="${SPACESHIP_NODE_COLOR:="green"}"

# RUBY
SPACESHIP_RUBY_SHOW="${SPACESHIP_RUBY_SHOW:=true}"
SPACESHIP_RUBY_PREFIX="${SPACESHIP_RUBY_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_RUBY_SUFFIX="${SPACESHIP_RUBY_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_RUBY_SYMBOL="${SPACESHIP_RUBY_SYMBOL:="💎 "}"
SPACESHIP_RUBY_COLOR="${SPACESHIP_RUBY_COLOR:="red"}"

# ELIXIR
SPACESHIP_ELIXIR_SHOW="${SPACESHIP_ELIXIR_SHOW:=true}"
SPACESHIP_ELIXIR_PREFIX="${SPACESHIP_ELIXIR_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_ELIXIR_SUFFIX="${SPACESHIP_ELIXIR_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_ELIXIR_SYMBOL="${SPACESHIP_ELIXIR_SYMBOL:="💧 "}"
SPACESHIP_ELIXIR_DEFAULT_VERSION="${SPACESHIP_ELIXIR_DEFAULT_VERSION:=""}"
SPACESHIP_ELIXIR_COLOR="${SPACESHIP_ELIXIR_COLOR:="magenta"}"

# XCODE
SPACESHIP_XCODE_SHOW_LOCAL="${SPACESHIP_XCODE_SHOW_LOCAL:=true}"
SPACESHIP_XCODE_SHOW_GLOBAL="${SPACESHIP_XCODE_SHOW_GLOBAL:=false}"
SPACESHIP_XCODE_PREFIX="${SPACESHIP_XCODE_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_XCODE_SUFFIX="${SPACESHIP_XCODE_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_XCODE_SYMBOL="${SPACESHIP_XCODE_SYMBOL:="🛠 "}"
SPACESHIP_XCODE_COLOR="${SPACESHIP_XCODE_COLOR:="blue"}"

# SWIFT
SPACESHIP_SWIFT_SHOW_LOCAL="${SPACESHIP_SWIFT_SHOW_LOCAL:=true}"
SPACESHIP_SWIFT_SHOW_GLOBAL="${SPACESHIP_SWIFT_SHOW_GLOBAL:=false}"
SPACESHIP_SWIFT_PREFIX="${SPACESHIP_SWIFT_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_SWIFT_SUFFIX="${SPACESHIP_SWIFT_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_SWIFT_SYMBOL="${SPACESHIP_SWIFT_SYMBOL:="🐦 "}"
SPACESHIP_SWIFT_COLOR="${SPACESHIP_SWIFT_COLOR:="yellow"}"

# GOLANG
SPACESHIP_GOLANG_SHOW="${SPACESHIP_GOLANG_SHOW:=true}"
SPACESHIP_GOLANG_PREFIX="${SPACESHIP_GOLANG_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_GOLANG_SUFFIX="${SPACESHIP_GOLANG_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_GOLANG_SYMBOL="${SPACESHIP_GOLANG_SYMBOL:="🐹 "}"
SPACESHIP_GOLANG_COLOR="${SPACESHIP_GOLANG_COLOR:="cyan"}"

# PHP
SPACESHIP_PHP_SHOW="${SPACESHIP_PHP_SHOW:=true}"
SPACESHIP_PHP_PREFIX="${SPACESHIP_PHP_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PHP_SUFFIX="${SPACESHIP_PHP_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PHP_SYMBOL="${SPACESHIP_PHP_SYMBOL:="🐘 "}"
SPACESHIP_PHP_COLOR="${SPACESHIP_PHP_COLOR:="blue"}"

# RUST
SPACESHIP_RUST_SHOW="${SPACESHIP_RUST_SHOW:=true}"
SPACESHIP_RUST_PREFIX="${SPACESHIP_RUST_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_RUST_SUFFIX="${SPACESHIP_RUST_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_RUST_SYMBOL="${SPACESHIP_RUST_SYMBOL:="𝗥 "}"
SPACESHIP_RUST_COLOR="${SPACESHIP_RUST_COLOR:="red"}"

# HASKELL
SPACESHIP_HASKELL_SHOW="${SPACESHIP_HASKELL_SHOW:=true}"
SPACESHIP_HASKELL_PREFIX="${SPACESHIP_HASKELL_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_HASKELL_SUFFIX="${SPACESHIP_HASKELL_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_HASKELL_SYMBOL="${SPACESHIP_HASKELL_SYMBOL:="λ "}"
SPACESHIP_HASKELL_COLOR="${SPACESHIP_HASKELL_COLOR:="red"}"

# JULIA
SPACESHIP_JULIA_SHOW="${SPACESHIP_JULIA_SHOW:=true}"
SPACESHIP_JULIA_PREFIX="${SPACESHIP_JULIA_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_JULIA_SUFFIX="${SPACESHIP_JULIA_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_JULIA_SYMBOL="${SPACESHIP_JULIA_SYMBOL:="ஃ "}"
SPACESHIP_JULIA_COLOR="${SPACESHIP_JULIA_COLOR:="green"}"

# DOCKER
SPACESHIP_DOCKER_SHOW="${SPACESHIP_DOCKER_SHOW:=true}"
SPACESHIP_DOCKER_PREFIX="${SPACESHIP_DOCKER_PREFIX:="on "}"
SPACESHIP_DOCKER_SUFFIX="${SPACESHIP_DOCKER_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_DOCKER_SYMBOL="${SPACESHIP_DOCKER_SYMBOL:="🐳 "}"
SPACESHIP_DOCKER_COLOR="${SPACESHIP_DOCKER_COLOR:="cyan"}"

# VENV
SPACESHIP_VENV_SHOW="${SPACESHIP_VENV_SHOW:=true}"
SPACESHIP_VENV_PREFIX="${SPACESHIP_VENV_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VENV_SUFFIX="${SPACESHIP_VENV_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VENV_COLOR="${SPACESHIP_VENV_COLOR:="blue"}"

# CONDA
SPACESHIP_CONDA_SHOW="${SPACESHIP_CONDA_SHOW:=true}"
SPACESHIP_CONDA_PREFIX="${SPACESHIP_CONDA_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_CONDA_SUFFIX="${SPACESHIP_CONDA_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_CONDA_SYMBOL="${SPACESHIP_CONDA_SYMBOL:="🅒 "}"
SPACESHIP_CONDA_COLOR="${SPACESHIP_CONDA_COLOR:="blue"}"

# PYENV
SPACESHIP_PYENV_SHOW="${SPACESHIP_PYENV_SHOW:=true}"
SPACESHIP_PYENV_PREFIX="${SPACESHIP_PYENV_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PYENV_SUFFIX="${SPACESHIP_PYENV_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PYENV_SYMBOL="${SPACESHIP_PYENV_SYMBOL:="🐍 "}"
SPACESHIP_PYENV_COLOR="${SPACESHIP_PYENV_COLOR:="yellow"}"

# DOTNET
SPACESHIP_DOTNET_SHOW="${SPACESHIP_DOTNET_SHOW:=true}"
SPACESHIP_DOTNET_PREFIX="${SPACESHIP_DOTNET_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_DOTNET_SUFFIX="${SPACESHIP_DOTNET_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_DOTNET_SYMBOL="${SPACESHIP_DOTNET_SYMBOL:=".NET "}"
SPACESHIP_DOTNET_COLOR="${SPACESHIP_DOTNET_COLOR:="128"}"

# EMBER
SPACESHIP_EMBER_SHOW="${SPACESHIP_EMBER_SHOW:=true}"
SPACESHIP_EMBER_PREFIX="${SPACESHIP_EMBER_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_EMBER_SUFFIX="${SPACESHIP_EMBER_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EMBER_SYMBOL="${SPACESHIP_EMBER_SYMBOL:="🐹 "}"
SPACESHIP_EMBER_COLOR="${SPACESHIP_EMBER_COLOR:="210"}"

# KUBECONTEXT
SPACESHIP_KUBECONTEXT_SHOW="${SPACESHIP_KUBECONTEXT_SHOW:=true}"
SPACESHIP_KUBECONTEXT_PREFIX="${SPACESHIP_KUBECONTEXT_PREFIX:="at "}"
SPACESHIP_KUBECONTEXT_SUFFIX="${SPACESHIP_KUBECONTEXT_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_KUBECONTEXT_SYMBOL="${SPACESHIP_KUBECONTEXT_SYMBOL:="☸️ "}"
SPACESHIP_KUBECONTEXT_COLOR="${SPACESHIP_KUBECONTEXT_COLOR:="cyan"}"

# EXECUTION TIME
SPACESHIP_EXEC_TIME_SHOW="${SPACESHIP_EXEC_TIME_SHOW:=true}"
SPACESHIP_EXEC_TIME_PREFIX="${SPACESHIP_EXEC_TIME_PREFIX:="took "}"
SPACESHIP_EXEC_TIME_SUFFIX="${SPACESHIP_EXEC_TIME_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EXEC_TIME_COLOR="${SPACESHIP_EXEC_TIME_COLOR:="yellow"}"
SPACESHIP_EXEC_TIME_ELAPSED="${SPACESHIP_EXEC_TIME_ELAPSED:=2}"

# BATTERY
SPACESHIP_BATTERY_SHOW="${SPACESHIP_BATTERY_SHOW:=true}"
SPACESHIP_BATTERY_ALWAYS_SHOW="${SPACESHIP_BATTERY_ALWAYS_SHOW:=false}"
SPACESHIP_BATTERY_PREFIX="${SPACESHIP_BATTERY_PREFFIX:=""}"
SPACESHIP_BATTERY_SUFFIX="${SPACESHIP_BATTERY_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_BATTERY_CHARGING_SYMBOL="${SPACESHIP_BATTERY_CHARGING_SYMBOL:="⇡"}"
SPACESHIP_BATTERY_DISCHARGING_SYMBOL="${SPACESHIP_BATTERY_DISCHARGING_SYMBOL:="⇣"}"
SPACESHIP_BATTERY_FULL_SYMBOL="${SPACESHIP_BATTERY_FULL_SYMBOL:="•"}"
SPACESHIP_BATTERY_THRESHOLD="${SPACESHIP_BATTERY_THRESHOLD:=10}"

# VI_MODE
SPACESHIP_VI_MODE_SHOW="${SPACESHIP_VI_MODE_SHOW:=true}"
SPACESHIP_VI_MODE_PREFIX="${SPACESHIP_VI_MODE_PREFIX:=""}"
SPACESHIP_VI_MODE_SUFFIX="${SPACESHIP_VI_MODE_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VI_MODE_INSERT="${SPACESHIP_VI_MODE_INSERT:="[I]"}"
SPACESHIP_VI_MODE_NORMAL="${SPACESHIP_VI_MODE_NORMAL:="[N]"}"
SPACESHIP_VI_MODE_COLOR="${SPACESHIP_VI_MODE_COLOR:="white"}"

# JOBS
SPACESHIP_JOBS_SHOW="${SPACESHIP_JOBS_SHOW:=true}"
SPACESHIP_JOBS_PREFIX="${SPACESHIP_JOBS_PREFIX:=""}"
SPACESHIP_JOBS_SUFFIX="${SPACESHIP_JOBS_SUFFIX:=" "}"
SPACESHIP_JOBS_SYMBOL="${SPACESHIP_JOBS_SYMBOL:="✦"}"
SPACESHIP_JOBS_COLOR="${SPACESHIP_JOBS_COLOR:="blue"}"

# EXIT CODE
SPACESHIP_EXIT_CODE_SHOW="${SPACESHIP_EXIT_CODE_SHOW:=false}"
SPACESHIP_EXIT_CODE_PREFIX="${SPACESHIP_EXIT_CODE_PREFIX:=""}"
SPACESHIP_EXIT_CODE_SUFFIX="${SPACESHIP_EXIT_CODE_SUFFIX:=" "}"
SPACESHIP_EXIT_CODE_SYMBOl="${SPACESHIP_EXIT_CODE_SYMBOl:="✘"}"
SPACESHIP_EXIT_CODE_COLOR="${SPACESHIP_EXIT_CODE_COLOR:="red"}"

# Amazon Web Services (AWS)
SPACESHIP_AWS_SHOW="${SPACESHIP_AWS_SHOW:=true}"
SPACESHIP_AWS_PREFIX="${SPACESHIP_AWS_PREFIX:="using "}"
SPACESHIP_AWS_SUFFIX="${SPACESHIP_AWS_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_AWS_SYMBOL="${SPACESHIP_AWS_SYMBOL:="☁️ "}"
SPACESHIP_AWS_COLOR="${SPACESHIP_AWS_COLOR:="208"}"

# ------------------------------------------------------------------------------
# HELPERS
# Helpers for common used actions
# ------------------------------------------------------------------------------

# Check if command exists in $PATH
# USAGE:
#   _exists <command>
_exists() {
  command -v $1 > /dev/null 2>&1
}

# Check if the current directory is in a Git repository.
# USAGE:
#   _is_git
_is_git() {
  command git rev-parse --is-inside-work-tree &>/dev/null
}

# Check if the current directory is in a Mercurial repository.
# USAGE:
#   _is_hg
_is_hg() {
  local root="$(pwd -P)"

  while [[ $root && ! -d $root/.hg ]]
  do
    root="${root%/*}"
  done

  [[ -n "$root" ]] &>/dev/null
}

# Draw prompt section (bold is used as default)
# USAGE:
#   _prompt_section <color> [prefix] <content> [suffix]
SPACESHIP_OPENED=true # Internal variable for checking if prompt is opened
_prompt_section() {
  local color prefix content suffix
  [[ -n $1 ]] && color="%F{$1}"  || color="%f"
  [[ -n $2 ]] && prefix="$2"     || prefix=""
  [[ -n $3 ]] && content="$3"    || content=""
  [[ -n $4 ]] && suffix="$4"     || suffix=""

  [[ -z $3 && -z $4 ]] && content=$2 prefix=''

  # echo -n "%{%B%}" # set bold
  if [[ $SPACESHIP_OPENED == true ]] && [[ $SPACESHIP_PROMPT_PREFIXES_SHOW == true ]]; then
    echo -n "$prefix"
  fi
  SPACESHIP_OPENED=true
  echo -n "%{%b%}" # unset bold

  echo -n "%{%B$color%}" # set color
  echo -n "$content"     # section content
  echo -n "%{%b%f%}"     # unset color

  echo -n "%{%B%}" # reset bold, if it was diabled before
  if [[ $SPACESHIP_PROMPT_SUFFIXES_SHOW == true ]]; then
    echo -n "$suffix"
  fi
  echo -n "%{%b%}" # unset bold
}

# Print message backward compatibility warning
# USAGE:
#  _deprecate <deprecated> <actual>
_deprecated() {
  [[ -n $1 && -n $2 ]] || return
  local deprecated=$1 actual=$2 b=$bold_color r=$reset_color
  local deprecated_value=${(P)deprecated} # the value of variable name $deprecated
  [[ -n $deprecated_value ]] || return
  echo "${b}\$$deprecated${r} is deprecated. Use ${b}\$$actual${r} instead."
}

# Display seconds in human readable fromat
# Based on http://stackoverflow.com/a/32164707/3859566
# USAGE:
#   _displaytime <seconds>
_displaytime() {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  [[ $D > 0 ]] && printf '%dd ' $D
  [[ $H > 0 ]] && printf '%dh ' $H
  [[ $M > 0 ]] && printf '%dm ' $M
  printf '%ds' $S
}

# ------------------------------------------------------------------------------
# HOOKS
# ZSH hooks for advanced actions
# ------------------------------------------------------------------------------

# Execution time start
spaceship_exec_time_preexec_hook() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return
  SPACESHIP_EXEC_TIME_start=$(date +%s)
}

# Execution time end
spaceship_exec_time_precmd_hook() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return
  [[ -n $SPACESHIP_EXEC_TIME_duration ]] && unset SPACESHIP_EXEC_TIME_duration
  [[ -z $SPACESHIP_EXEC_TIME_start ]] && return
  local SPACESHIP_EXEC_TIME_stop=$(date +%s)
  SPACESHIP_EXEC_TIME_duration=$(( $SPACESHIP_EXEC_TIME_stop - $SPACESHIP_EXEC_TIME_start ))
  unset SPACESHIP_EXEC_TIME_start
}

# ------------------------------------------------------------------------------
# SECTIONS
# The parts the prompt consists of
# ------------------------------------------------------------------------------

# TIME
spaceship_time() {
  [[ $SPACESHIP_TIME_SHOW == false ]] && return

  local time_str

  if [[ $SPACESHIP_TIME_FORMAT != false ]]; then
    time_str="${SPACESHIP_TIME_FORMAT}"
  elif [[ $SPACESHIP_TIME_12HR == true ]]; then
    time_str="%D{%r}"
  else
    time_str="%D{%T}"
  fi

  _prompt_section \
    "$SPACESHIP_TIME_COLOR" \
    "$SPACESHIP_TIME_PREFIX" \
    "$time_str" \
    "$SPACESHIP_TIME_SUFFIX"
}

# USER
# If user is root, then paint it in red. Otherwise, just print in yellow.
spaceship_user() {
  [[ $SPACESHIP_USER_SHOW == false ]] && return

  if [[ $LOGNAME != $USER ]] || [[ $UID == 0 ]] || [[ -n $SSH_CONNECTION ]]; then
    local user_color

    if [[ $USER == 'root' ]]; then
      user_color=$SPACESHIP_USER_COLOR_ROOT
    else
      user_color="$SPACESHIP_USER_COLOR"
    fi

    _prompt_section \
      "$user_color" \
      "$SPACESHIP_USER_PREFIX" \
      '%n' \
      "$SPACESHIP_USER_SUFFIX"
  fi
}

# HOST
# If there is an ssh connections, current machine name.
spaceship_host() {
  [[ $SPACESHIP_HOST_SHOW == false ]] && return

  [[ -n $SSH_CONNECTION ]] || return

  _prompt_section \
    "$SPACESHIP_HOST_COLOR" \
    "$SPACESHIP_HOST_PREFIX" \
    '%m' \
    "$SPACESHIP_HOST_SUFFIX"
}

# DIR
# Current directory. Return only three last items of path
spaceship_dir() {
  [[ $SPACESHIP_DIR_SHOW == false ]] && return

  _prompt_section \
    "$SPACESHIP_DIR_COLOR" \
    "$SPACESHIP_DIR_PREFIX" \
    "%${SPACESHIP_DIR_TRUNC}~" \
    "$SPACESHIP_DIR_SUFFIX"
}

# GIT BRANCH
# Show current git brunch using git_current_status from Oh-My-Zsh
spaceship_git_branch() {
  [[ $SPACESHIP_GIT_BRANCH_SHOW == false ]] && return

  _is_git || return

  _prompt_section \
    "$SPACESHIP_GIT_BRANCH_COLOR" \
    "$SPACESHIP_GIT_BRANCH_PREFIX$(git_current_branch)$SPACESHIP_GIT_BRANCH_SUFFIX"
}

# GIT STATUS
# Check if current dir is a git repo, set up ZSH_THEME_* variables
# and show git status using git_prompt_status from Oh-My-Zsh
# Reference:
#   https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh
spaceship_git_status() {
  [[ $SPACESHIP_GIT_STATUS_SHOW == false ]] && return

  _is_git || return

  ZSH_THEME_GIT_PROMPT_UNTRACKED=$SPACESHIP_GIT_STATUS_UNTRACKED
  ZSH_THEME_GIT_PROMPT_ADDED=$SPACESHIP_GIT_STATUS_ADDED
  ZSH_THEME_GIT_PROMPT_MODIFIED=$SPACESHIP_GIT_STATUS_MODIFIED
  ZSH_THEME_GIT_PROMPT_RENAMED=$SPACESHIP_GIT_STATUS_RENAMED
  ZSH_THEME_GIT_PROMPT_DELETED=$SPACESHIP_GIT_STATUS_DELETED
  ZSH_THEME_GIT_PROMPT_STASHED=$SPACESHIP_GIT_STATUS_STASHED
  ZSH_THEME_GIT_PROMPT_UNMERGED=$SPACESHIP_GIT_STATUS_UNMERGED
  ZSH_THEME_GIT_PROMPT_AHEAD=$SPACESHIP_GIT_STATUS_AHEAD
  ZSH_THEME_GIT_PROMPT_BEHIND=$SPACESHIP_GIT_STATUS_BEHIND
  ZSH_THEME_GIT_PROMPT_DIVERGED=$SPACESHIP_GIT_STATUS_DIVERGED

  local git_status="$(git_prompt_status)"

  if [[ -n $git_status ]]; then
    # Status prefixes are colorized
    _prompt_section \
      "$SPACESHIP_GIT_STATUS_COLOR" \
      "$SPACESHIP_GIT_STATUS_PREFIX$git_status$SPACESHIP_GIT_STATUS_SUFFIX"
  fi
}

# GIT
# Show both git branch and git status:
#   spaceship_git_branch
#   spaceship_git_status
spaceship_git() {
  [[ $SPACESHIP_GIT_SHOW == false ]] && return

  local git_branch="$(spaceship_git_branch)" git_status="$(spaceship_git_status)"

  [[ -z $git_branch ]] && return

  _prompt_section \
    'white' \
    "$SPACESHIP_GIT_PREFIX" \
    "${git_branch}${git_status}" \
    "$SPACESHIP_GIT_SUFFIX"
}

# MERCURIAL BRANCH
# Show current hg branch
spaceship_hg_branch() {
  [[ $SPACESHIP_HG_BRANCH_SHOW == false ]] && return

  _is_hg || return

  _prompt_section \
    "$SPACESHIP_HG_BRANCH_COLOR" \
    "$SPACESHIP_HG_BRANCH_PREFIX"$(hg branch)"$SPACESHIP_HG_BRANCH_SUFFIX"
}

# MERCURIAL STATUS
# Check if current dir is a hg repo and show hg status as indicators
spaceship_hg_status() {
  [[ $SPACESHIP_HG_STATUS_SHOW == false ]] && return

  _is_hg || return

  local INDEX=$(hg status 2>/dev/null) hg_status=""

  # Indicators are suffixed instead of prefixed to each other to
  # provide uniform view across git and mercurial indicators
  if $(echo "$INDEX" | grep -E '^\? ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_UNTRACKED$hg_status"
  elif $(echo "$INDEX" | grep -E '^A ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_ADDED$hg_status"
  elif $(echo "$INDEX" | grep -E '^M ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_MODIFIED$hg_status"
  elif $(echo "$INDEX" | grep -E '^(R|!)' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_DELETED$hg_status"
  fi

  if [[ -n $hg_status ]]; then
    _prompt_section \
      "$SPACESHIP_HG_STATUS_COLOR" \
      "$SPACESHIP_HG_STATUS_PREFIX"$hg_status"$SPACESHIP_HG_STATUS_SUFFIX"
  fi
}

# MERCURIAL
# Show both hg branch and hg status:
#   spaceship_hg_branch
#   spaceship_hg_status
spaceship_hg() {
  [[ $SPACESHIP_HG_SHOW == false ]] && return

  local hg_branch="$(spaceship_hg_branch)" hg_status="$(spaceship_hg_status)"

  [[ -z $hg_branch ]] && return

  _prompt_section \
    'white' \
    "$SPACESHIP_HG_PREFIX" \
    "${hg_branch}${hg_status}" \
    "$SPACESHIP_HG_SUFFIX"
}

# PACKAGE
# Show current package version
spaceship_package() {
  [[ $SPACESHIP_PACKAGE_SHOW == false ]] && return

  # Show package version only when repository is a package
  # @todo: add more package managers
  [[ -f package.json ]] || return

  _exists npm || return

  # Grep and cut out package version
  # Grep -E does not support \d for digits shortcut, should use [:digit:] or [0-9] instead
  local package_version=$(grep -E '"version": "v?([0-9]+\.){1,}' package.json | cut -d\" -f4 2> /dev/null)

  # Handle version not found
  if [ ! "$package_version" ]; then
    package_version=" ⚠"
  else
    package_version=" v${package_version}"
  fi

  _prompt_section \
    "$SPACESHIP_PACKAGE_COLOR" \
    "$SPACESHIP_PACKAGE_PREFIX" \
    "${SPACESHIP_PACKAGE_SYMBOL}${package_version}" \
    "$SPACESHIP_PACKAGE_SUFFIX"
}

# NODE
# Show current version of node, exception system.
spaceship_node() {
  [[ $SPACESHIP_NODE_SHOW == false ]] && return

  # Show NODE status only for JS-specific folders
  [[ -f package.json || -d node_modules || -n *.js(#qN^/) ]] || return

  local node_version

  if _exists nvm; then
    node_version=$(nvm current 2>/dev/null)
    [[ $node_version == "system" || $node_version == "node" ]] && return
  elif _exists nodenv; then
    node_version=$(nodenv version-name)
    [[ $node_version == "system" || $node_version == "node" ]] && return
  elif _exists node; then
    node_version=$(node -v 2>/dev/null)
    [[ $node_version == $SPACESHIP_NODE_DEFAULT_VERSION ]] && return
  else
    return
  fi

  _prompt_section \
    "$SPACESHIP_NODE_COLOR" \
    "$SPACESHIP_NODE_PREFIX" \
    "${SPACESHIP_NODE_SYMBOL}${node_version}" \
    "$SPACESHIP_NODE_SUFFIX"
}

# RUBY
# Show current version of Ruby
spaceship_ruby() {
  [[ $SPACESHIP_RUBY_SHOW == false ]] && return

  # Show versions only for Ruby-specific folders
  [[ -f Gemfile || -f Rakefile || -n *.rb(#qN^/) ]] || return

  local ruby_version

  if _exists rvm-prompt; then
    ruby_version=$(rvm-prompt i v g)
  elif _exists chruby; then
    ruby_version=$(chruby | sed -n -e 's/ \* //p')
  elif _exists rbenv; then
    ruby_version=$(rbenv version-name)
  else
    return
  fi

  [[ "${ruby_version}" == "system" ]] && return

  # Add 'v' before ruby version that starts with a number
  [[ "${ruby_version}" =~ ^[0-9].+$ ]] && ruby_version="v${ruby_version}"

  _prompt_section \
    "$SPACESHIP_RUBY_COLOR" \
    "$SPACESHIP_RUBY_PREFIX" \
    "${SPACESHIP_RUBY_SYMBOL}${ruby_version}" \
    "$SPACESHIP_RUBY_SUFFIX"
}

# ELIXIR
# Show current version of Elixir
spaceship_elixir() {
  [[ $SPACESHIP_ELIXIR_SHOW == false ]] && return

  # Show versions only for Elixir-specific folders
  [[ -f mix.exs || -n *.ex(#qN^/) || -n *.exs(#qN^/) ]] || return

  local elixir_version

  if _exists kiex; then
    elixir_version="${ELIXIR_VERSION}"
  elif _exists exenv; then
    elixir_version=$(exenv version-name)
  fi

  if [[ $elixir_version == "" ]]; then
    _exists elixir || return
    elixir_version=$(elixir -v 2>/dev/null | grep "Elixir" --color=never | cut -d ' ' -f 2)
  fi

  [[ $elixir_version == "system" ]] && return
  [[ $elixir_version == $SPACESHIP_ELIXIR_DEFAULT_VERSION ]] && return

  # Add 'v' before elixir version that starts with a number
  [[ "${elixir_version}" =~ ^[0-9].+$ ]] && elixir_version="v${elixir_version}"

  _prompt_section \
    "$SPACESHIP_ELIXIR_COLOR" \
    "$SPACESHIP_ELIXIR_PREFIX" \
    "${SPACESHIP_ELIXIR_SYMBOL}${elixir_version}" \
    "$SPACESHIP_ELIXIR_SUFFIX"
}

# XCODE
# Show current version of Xcode
spaceship_xcode() {
  _exists xcenv || return

  local xcode_path

  if [[ $SPACESHIP_SWIFT_SHOW_GLOBAL == true ]] ; then
    xcode_path=$(xcenv version | sed 's/ .*//')
  elif [[ $SPACESHIP_SWIFT_SHOW_LOCAL == true ]] ; then
    if xcenv version | grep ".xcode-version" > /dev/null; then
      xcode_path=$(xcenv version | sed 's/ .*//')
    fi
  fi

  if [ -n "${xcode_path}" ]; then
    local xcode_version_path=$xcode_path"/Contents/version.plist"
    if [ -f ${xcode_version_path} ]; then
      if _exists defaults; then
        local xcode_version=$(defaults read ${xcode_version_path} CFBundleShortVersionString)

        _prompt_section \
          "$SPACESHIP_XCODE_COLOR" \
          "$SPACESHIP_XCODE_PREFIX" \
          "${SPACESHIP_XCODE_SYMBOL}${xcode_version}" \
          "$SPACESHIP_XCODE_SUFFIX"
      fi
    fi
  fi
}

# SWIFT
# Show current version of Swift
spaceship_swift() {
  _exists swiftenv || return

  local swift_version

  if [[ $SPACESHIP_SWIFT_SHOW_GLOBAL == true ]] ; then
    swift_version=$(swiftenv version | sed 's/ .*//')
  elif [[ $SPACESHIP_SWIFT_SHOW_LOCAL == true ]] ; then
    if swiftenv version | grep ".swift-version" > /dev/null; then
      swift_version=$(swiftenv version | sed 's/ .*//')
    fi
  fi

  [ -n "${swift_version}" ] || return

  _prompt_section \
    "$SPACESHIP_SWIFT_COLOR" \
    "$SPACESHIP_SWIFT_PREFIX" \
    "${SPACESHIP_SWIFT_SYMBOL}${swift_version}" \
    "$SPACESHIP_SWIFT_SUFFIX"
}

# GOLANG
# Show current version of Go
spaceship_golang() {
  [[ $SPACESHIP_GOLANG_SHOW == false ]] && return

  # If there are Go-specific files in current directory, or current directory is under the GOPATH
  [[ -d Godeps || -f glide.yaml || -n *.go(#qN^/) || -f Gopkg.yml || -f Gopkg.lock || ( $GOPATH && $PWD =~ $GOPATH ) ]] || return

  _exists go || return

  local go_version=$(go version | grep --colour=never -oE '[[:digit:]].[[:digit:]]')

  _prompt_section \
    "$SPACESHIP_GOLANG_COLOR" \
    "$SPACESHIP_GOLANG_PREFIX" \
    "${SPACESHIP_GOLANG_SYMBOL}v${go_version}" \
    "$SPACESHIP_GOLANG_SUFFIX"
}

# PHP
# Show current version of PHP
spaceship_php() {
  [[ $SPACESHIP_PHP_SHOW == false ]] && return

  # Show only if php files exist in current directory
  [[ -n *.php(#qN^/) ]] || return

  _exists php || return

  local php_version=$(php -v 2>&1 | grep --color=never -oe "^PHP\s*[0-9.]*" | awk '{print $2}')

  _prompt_section \
    "$SPACESHIP_PHP_COLOR" \
    "$SPACESHIP_PHP_PREFIX" \
    "${SPACESHIP_PHP_SYMBOL}v${php_version}" \
    "${SPACESHIP_PHP_SUFFIX}"
}

# RUST
# Show current version of Rust
spaceship_rust() {
  [[ $SPACESHIP_RUST_SHOW == false ]] && return

  # If there are Rust-specific files in current directory
  [[ -f Cargo.toml || -n *.rs(#qN^/) ]] || return

  _exists rustc || return

  local rust_version=$(rustc --version | grep --colour=never -oE '[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]')

  _prompt_section \
    "$SPACESHIP_RUST_COLOR" \
    "$SPACESHIP_RUST_PREFIX" \
    "${SPACESHIP_RUST_SYMBOL}v${rust_version}" \
    "$SPACESHIP_RUST_SUFFIX"
}

# HASKELL
# Show current version of Haskell Tool Stack.
spaceship_haskell() {
  [[ $SPACESHIP_HASKELL_SHOW == false ]] && return

  # If there are stack files in current directory
  [[ -f stack.yaml ]] || return

  # The command is stack, so do not change this to haskell.
  _exists stack || return

  local haskell_version=$(stack --numeric-version)

  _prompt_section \
    "$SPACESHIP_HASKELL_COLOR" \
    "$SPACESHIP_HASKELL_PREFIX" \
    "${SPACESHIP_HASKELL_SYMBOL}v${haskell_version}" \
    "$SPACESHIP_HASKELL_SUFFIX"
}

# JULIA
# Show current version of Julia
spaceship_julia() {
  [[ $SPACESHIP_JULIA_SHOW == false ]] && return

  # If there are julia files in current directory
  [[ -n *.jl(#qN^/) ]] || return

  _exists julia || return

  local julia_version=$(julia --version | grep --colour=never -oE '[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]')

  _prompt_section \
    "$SPACESHIP_JULIA_COLOR" \
    "$SPACESHIP_JULIA_PREFIX" \
    "${SPACESHIP_JULIA_SYMBOL}v${julia_version}" \
    "$SPACESHIP_JULIA_SUFFIX"
}

# DOCKER
# Show current Docker version and connected machine
spaceship_docker() {
  [[ $SPACESHIP_DOCKER_SHOW == false ]] && return

  _exists docker || return

  # Show Docker status only for Docker-specific folders
  [[ -f Dockerfile || -f docker-compose.yml ]] || return

  # if docker daemon isn't running you'll get an error saying it can't connect
  docker info 2>&1 | grep -q "Cannot connect" && return

  local docker_version=$(docker version -f "{{.Server.Version}}")

  if [[ -n $DOCKER_MACHINE_NAME ]]; then
    docker_version+=" via ($DOCKER_MACHINE_NAME)"
  fi

  _prompt_section \
    "$SPACESHIP_DOCKER_COLOR" \
    "$SPACESHIP_DOCKER_PREFIX" \
    "${SPACESHIP_DOCKER_SYMBOL}v${docker_version}" \
    "$SPACESHIP_DOCKER_SUFFIX"
}

# Amazon Web Services (AWS)
# Shows selected AWS cli profile.
spaceship_aws() {
  [[ $SPACESHIP_AWS_SHOW == false ]] && return
  # Check if the AWS-cli is installed
  _exists aws || return

  # Is the current profile not the default profile
  [[ -z $AWS_DEFAULT_PROFILE ]] || [[ "$AWS_DEFAULT_PROFILE" == "default" ]] && return

  # Show prompt section
  _prompt_section \
    "$SPACESHIP_AWS_COLOR" \
    "$SPACESHIP_AWS_PREFIX" \
    "${SPACESHIP_AWS_SYMBOL}$AWS_DEFAULT_PROFILE" \
    "$SPACESHIP_AWS_SUFFIX"
}

# VENV
# Show current virtual environment (Python).
spaceship_venv() {
  [[ $SPACESHIP_VENV_SHOW == false ]] && return

  # Check if the current directory running via Virtualenv
  [ -n "$VIRTUAL_ENV" ] && _exists deactivate || return

  _prompt_section \
    "$SPACESHIP_VENV_COLOR" \
    "$SPACESHIP_VENV_PREFIX" \
    "$VIRTUAL_ENV:t" \
    "$SPACESHIP_VENV_SUFFIX"
}

# CONDA
# Show current conda virtual environment
spaceship_conda() {
  [[ $SPACESHIP_CONDA_SHOW == false ]] && return

  # Check if running via conda virtualenv
  _exists conda && [ -n "$CONDA_DEFAULT_ENV" ] || return

  _prompt_section \
    "$SPACESHIP_CONDA_COLOR" \
    "$SPACESHIP_CONDA_PREFIX" \
    "${SPACESHIP_CONDA_SYMBOL}${CONDA_DEFAULT_ENV}" \
    "$SPACESHIP_CONDA_SUFFIX"
}

# PYENV
# Show current version of pyenv python, including system.
spaceship_pyenv() {
  [[ $SPACESHIP_PYENV_SHOW == false ]] && return

  # Show pyenv python version only for Python-specific folders
  [[ -f requirements.txt ]] || [[ -n *.py(#qN^/) ]] || return

  _exists pyenv || return # Do nothing if pyenv is not installed

  local pyenv_status=${$(pyenv version-name 2>/dev/null)//:/ }

  _prompt_section \
    "$SPACESHIP_PYENV_COLOR" \
    "$SPACESHIP_PYENV_PREFIX" \
    "${SPACESHIP_PYENV_SYMBOL}${pyenv_status}" \
    "$SPACESHIP_PYENV_SUFFIX"
}

# DOTNET
# Show current version of .NET SDK
spaceship_dotnet() {
  [[ $SPACESHIP_DOTNET_SHOW == false ]] && return

  # Show DOTNET status only for folders containing project.json, global.json, .csproj, .xproj or .sln files
  [[ -f project.json || -f global.json || -n *.csproj(#qN^/) || -n *.xproj(#qN^/) || -n *.sln(#qN^/) ]] || return

  _exists dotnet || return

  # dotnet-cli automatically handles SDK pinning (specified in a global.json file)
  # therefore, this already returns the expected version for the current directory
  local dotnet_version=$(dotnet --version 2>/dev/null)

  _prompt_section \
    "$SPACESHIP_DOTNET_COLOR" \
    "$SPACESHIP_DOTNET_PREFIX" \
    "${SPACESHIP_DOTNET_SYMBOL}${dotnet_version}" \
    "$SPACESHIP_DOTNET_SUFFIX"
}

# EMBER
# Show current version of ember, exception system.
spaceship_ember() {
  [[ $SPACESHIP_EMBER_SHOW == false ]] && return

  # Show EMBER status only for folders w/ ember-cli-build.js files
  [[ -f ember-cli-build.js && -f node_modules/ember-cli/package.json ]] || return

  local ember_version=$(grep '"version":' ./node_modules/ember-cli/package.json | cut -d\" -f4)
  [[ $ember_version == "system" || $ember_version == "ember" ]] && return

  _prompt_section \
    "$SPACESHIP_EMBER_COLOR" \
    "$SPACESHIP_EMBER_PREFIX" \
    "${SPACESHIP_EMBER_SYMBOL}${ember_version}" \
    "$SPACESHIP_EMBER_SUFFIX"
}

# KUBECONTEXT
# Show current context in kubectl.
spaceship_kubecontext() {
  [[ $SPACESHIP_KUBECONTEXT_SHOW == false ]] && return

  _exists kubectl || return
  local kube_context=$(kubectl config current-context 2>/dev/null)
  [[ -z $kube_context ]] && return

  _prompt_section \
    "$SPACESHIP_KUBECONTEXT_COLOR" \
    "$SPACESHIP_KUBECONTEXT_PREFIX" \
    "${SPACESHIP_KUBECONTEXT_SYMBOL}${kube_context}" \
    "$SPACESHIP_KUBECONTEXT_SUFFIX"
}

# EXECUTION TIME
# Execution time of the last command.
spaceship_exec_time() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return

  if [[ $SPACESHIP_EXEC_TIME_duration -ge $SPACESHIP_EXEC_TIME_ELAPSED ]]; then
    _prompt_section \
      "$SPACESHIP_EXEC_TIME_COLOR" \
      "$SPACESHIP_EXEC_TIME_PREFIX" \
      "$(_displaytime $SPACESHIP_EXEC_TIME_duration)" \
      "$SPACESHIP_EXEC_TIME_SUFFIX"
  fi
}

# BATTERY
# Show section only if either of follow is true
# - Always show is true
# - battery percentage is below the given limit (default: 10%)
# - Battery is fully charged
# Escape % for display since it's a special character in zsh prompt expansion
spaceship_battery() {
  [[ $SPACESHIP_BATTERY_SHOW == false ]] && return

  local battery_data battery_percent battery_status battery_color

  if _exists pmset; then
    battery_data=$(pmset -g batt)

    # Return if no internal battery
    [[ -z $(echo $battery_data | grep "InternalBattery") ]] && return

    battery_percent="$( echo $battery_data | grep -oE '[0-9]{1,3}%' )"
    battery_status="$( echo $battery_data | awk -F '; *' 'NR==2 { print $2 }' )"
  elif _exists upower; then
    local battery=$(command upower -e | grep battery | head -1)

    # Return if no battery
    [[ -z $battery ]] && return

    battery_data=$(upower -i $battery)
    battery_percent="$( echo $battery_data | grep percentage | awk '{print $2}' )"
    battery_status="$( echo $battery_data | grep state | awk '{print $2}' )"
  elif _exists acpi; then
    battery_data=$(acpi -b)

    # Return if no battery
    [[ -z $battery_data ]] && return
    battery_percent="$( echo $battery_data | awk '{print $4}' )"
    battery_status="$( echo $battery_data | awk '{print tolower($3)}' )"
  fi

  # Remove trailing % and symbols for comparison
  battery_percent="$(echo $battery_percent | tr -d '%[,;]')"

  # Change color based on battery percentage
  if [[ $battery_percent == 100 || $battery_status =~ "(charged|full)" ]]; then
    battery_color="green"
  elif [[ $battery_percent -lt $SPACESHIP_BATTERY_THRESHOLD ]]; then
    battery_color="red"
  else
    battery_color="yellow"
  fi

  # Battery indicator based on current status of battery
  if [[ $battery_status == "charging" ]];then
    battery_symbol="${SPACESHIP_BATTERY_CHARGING_SYMBOL}"
  elif [[ $battery_status =~ "^[dD]ischarg.*" ]]; then
    battery_symbol="${SPACESHIP_BATTERY_DISCHARGING_SYMBOL}"
  else
    battery_symbol="${SPACESHIP_BATTERY_FULL_SYMBOL}"
  fi

  # Escape % for display since it's a special character in zsh prompt expansion
  if [[ $SPACESHIP_BATTERY_ALWAYS_SHOW == true || $battery_percent -lt $SPACESHIP_BATTERY_THRESHOLD || $battery_status =~ "(charged|full)"  ]]; then
    _prompt_section \
      "$battery_color" \
      "$SPACESHIP_BATTERY_PREFIX" \
      "$battery_symbol$battery_percent%%" \
      "$SPACESHIP_BATTERY_SUFFIX"
  fi
}

# VI_MODE
# Show current vi_mode mode
spaceship_vi_mode() {
  [[ $SPACESHIP_VI_MODE_SHOW == true ]] || return

  if bindkey | grep "vi-quoted-insert" > /dev/null 2>&1; then # check if vi-mode enabled
    local mode_indicator="${SPACESHIP_VI_MODE_INSERT}"

    case "${KEYMAP}" in
      main|viins)
      mode_indicator="${SPACESHIP_VI_MODE_INSERT}"
      ;;
      vicmd)
      mode_indicator="${SPACESHIP_VI_MODE_NORMAL}"
      ;;
    esac

    _prompt_section \
      "$SPACESHIP_VI_MODE_COLOR" \
      "$SPACESHIP_VI_MODE_PREFIX" \
      "$mode_indicator" \
      "$SPACESHIP_VI_MODE_SUFFIX"
  fi
}

# Temporarily switch to vi-mode
spaceship_vi_mode_enable() {
  function zle-keymap-select() { zle reset-prompt ; zle -R }
  zle -N zle-keymap-select
  bindkey -v
}

# Temporarily switch to emacs-mode
spaceship_vi_mode_disable() {
  bindkey -e
}

# JOBS
# Show icon if there's a working jobs in the background
spaceship_jobs() {
  [[ $SPACESHIP_JOBS_SHOW == false ]] && return

  local jobs_amount=$(jobs -l | wc -l | xargs)

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  _prompt_section \
    "$SPACESHIP_JOBS_COLOR" \
    "$SPACESHIP_JOBS_PREFIX" \
    "${SPACESHIP_JOBS_SYMBOL}${jobs_amount}" \
    "$SPACESHIP_JOBS_SUFFIX"
}

# EXIT CODE
# Show exit code of last statement
spaceship_exit_code() {
  [[ $SPACESHIP_EXIT_CODE_SHOW == false || $RETVAL == 0 ]] && return

  _prompt_section \
    "$SPACESHIP_EXIT_CODE_COLOR" \
    "$SPACESHIP_EXIT_CODE_PREFIX" \
    "${SPACESHIP_EXIT_CODE_SYMBOl}$RETVAL" \
    "$SPACESHIP_EXIT_CODE_SUFFIX"
}

# LINE SEPARATOR
# Should it write prompt in two lines or not?
spaceship_line_sep() {
  [[ $SPACESHIP_PROMPT_SEPARATE_LINE == true ]] && echo -n "$NEWLINE"
}

# PROMPT CHARACTER
# Paint $PROMPT_SYMBOL in red if previous command was fail and
# paint in green if everything was OK.
spaceship_char() {
  _prompt_section "%(?.green.red)" "${SPACESHIP_PROMPT_SYMBOL} "
}

# ------------------------------------------------------------------------------
# BACKWARD COMPATIBILITY WARNINGS
# Show deprecation messages for options that are set, but not supported
# ------------------------------------------------------------------------------

# PROMPT
_deprecated SPACESHIP_PROMPT_TRUNC SPACESHIP_DIR_TRUNC
# PREFIXES
_deprecated SPACESHIP_PREFIX_SHOW SPACESHIP_PROMPT_PREFIXES_SHOW
_deprecated SPACESHIP_PREFIX_TIME SPACESHIP_TIME_PREFIX
_deprecated SPACESHIP_PREFIX_USER SPACESHIP_USER_PREFIX
_deprecated SPACESHIP_PREFIX_HOST SPACESHIP_HOST_PREFIX
_deprecated SPACESHIP_PREFIX_DIR SPACESHIP_DIR_PREFIX
_deprecated SPACESHIP_PREFIX_GIT SPACESHIP_GIT_PREFIX
_deprecated SPACESHIP_PREFIX_ENV_DEFAULT SPACESHIP_PROMPT_DEFAULT_PREFIX
_deprecated SPACESHIP_PREFIX_NVM SPACESHIP_NODE_PREFIX
_deprecated SPACESHIP_PREFIX_RUBY SPACESHIP_RUBY_PREFIX
_deprecated SPACESHIP_PREFIX_XCODE SPACESHIP_XCODE_PREFIX
_deprecated SPACESHIP_PREFIX_SWIFT SPACESHIP_SWIFT_PREFIX
_deprecated SPACESHIP_PREFIX_GOLANG SPACESHIP_GOLANG_PREFIX
_deprecated SPACESHIP_PREFIX_DOCKER SPACESHIP_DOCKER_PREFIX
_deprecated SPACESHIP_PREFIX_VENV SPACESHIP_VENV_PREFIX
_deprecated SPACESHIP_PREFIX_PYENV SPACESHIP_PYENV_PREFIX
_deprecated SPACESHIP_PREFIX_VI_MODE SPACESHIP_VI_MODE_PREFIX
# NVM
_deprecated SPACESHIP_NVM_SHOW SPACESHIP_NODE_SHOW
_deprecated SPACESHIP_NVM_SYMBOL SPACESHIP_NODE_SYMBOL
# GIT
_deprecated SPACESHIP_GIT_COLOR SPACESHIP_GIT_BRANCH_COLOR
_deprecated SPACESHIP_GIT_UNCOMMITTED SPACESHIP_GIT_STATUS_ADDED
_deprecated SPACESHIP_GIT_UNTRACKED SPACESHIP_GIT_STATUS_UNTRACKED
_deprecated SPACESHIP_GIT_UNSTAGED SPACESHIP_GIT_STATUS_MODIFIED
_deprecated SPACESHIP_GIT_STASHED SPACESHIP_GIT_STATUS_STASHED
_deprecated SPACESHIP_GIT_UNPULLED SPACESHIP_GIT_STATUS_BEHIND
_deprecated SPACESHIP_GIT_UNPUSHED SPACESHIP_GIT_STATUS_AHEAD

# ------------------------------------------------------------------------------
# MAIN
# An entry point of prompt
# ------------------------------------------------------------------------------

# Compose whole prompt from smaller parts
spaceship_prompt() {
  # Retirve exit code of last command to use in exit_code
  # Must be captured before any other command in prompt is executed
  RETVAL=$?

  # Option EXTENDED_GLOB is set locally to force filename generation on
  # argument to conditions, i.e. allow usage of explicit glob qualifier (#q).
  # See the description of filename generation in
  # http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html
  setopt EXTENDED_GLOB LOCAL_OPTIONS

  # Should it add a new line before the prompt?
  [[ $SPACESHIP_PROMPT_ADD_NEWLINE == true ]] && echo -n "$NEWLINE"

  # Execute all parts
  for section in $SPACESHIP_PROMPT_ORDER; do
    spaceship_$section
  done
}


############
# PURE
############

# Pure
# by Sindre Sorhus
# https://github.com/sindresorhus/pure
# MIT License

# For my own and others sanity
# git:
# %b => current branch
# %a => current action (rebase/merge)
# prompt:
# %F => color dict
# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)
# terminal codes:
# \e7   => save cursor position
# \e[2A => move cursor 2 lines up
# \e[1G => go to position 1 in terminal
# \e8   => restore cursor position
# \e[K  => clears everything after the cursor on the current line
# \e[2K => clear everything on the current line


# turns seconds into human readable time
# 165392 => 1d 21h 56m 32s
# https://github.com/sindresorhus/pretty-time-zsh
prompt_pure_human_time_to_var() {
	local human total_seconds=$1 var=$2
	local days=$(( total_seconds / 60 / 60 / 24 ))
	local hours=$(( total_seconds / 60 / 60 % 24 ))
	local minutes=$(( total_seconds / 60 % 60 ))
	local seconds=$(( total_seconds % 60 ))
	(( days > 0 )) && human+="${days}d "
	(( hours > 0 )) && human+="${hours}h "
	(( minutes > 0 )) && human+="${minutes}m "
	human+="${seconds}s"

	# store human readable time in variable as specified by caller
	typeset -g "${var}"="${human}"
}

# stores (into prompt_pure_cmd_exec_time) the exec time of the last command if set threshold was exceeded
prompt_pure_check_cmd_exec_time() {
	integer elapsed
	(( elapsed = EPOCHSECONDS - ${prompt_pure_cmd_timestamp:-$EPOCHSECONDS} ))
	typeset -g prompt_pure_cmd_exec_time=
	(( elapsed > ${PURE_CMD_MAX_EXEC_TIME:-5} )) && {
		prompt_pure_human_time_to_var $elapsed "prompt_pure_cmd_exec_time"
	}
}

prompt_pure_set_title() {
	# emacs terminal does not support settings the title
	(( ${+EMACS} )) && return

	# tell the terminal we are setting the title
	print -n '\e]0;'
	# show hostname if connected through ssh
	[[ -n $SSH_CONNECTION ]] && print -Pn '(%m) '
	case $1 in
		expand-prompt)
			print -Pn $2;;
		ignore-escape)
			print -rn $2;;
	esac
	# end set title
	print -n '\a'
}

prompt_pure_preexec() {
	if [[ -n $prompt_pure_git_fetch_pattern ]]; then
		# detect when git is performing pull/fetch (including git aliases).
		local -H MATCH MBEGIN MEND match mbegin mend
		if [[ $2 =~ (git|hub)\ (.*\ )?($prompt_pure_git_fetch_pattern)(\ .*)?$ ]]; then
			# we must flush the async jobs to cancel our git fetch in order
			# to avoid conflicts with the user issued pull / fetch.
			async_flush_jobs 'prompt_pure'
		fi
	fi

	typeset -g prompt_pure_cmd_timestamp=$EPOCHSECONDS

	# shows the current dir and executed command in the title while a process is active
	prompt_pure_set_title 'ignore-escape' "$PWD:t: $2"
}

# string length ignoring ansi escapes
prompt_pure_string_length_to_var() {
	local str=$1 var=$2 length
	# perform expansion on str and check length
	length=$(( ${#${(S%%)str//(\%([KF1]|)\{*\}|\%[Bbkf])}} ))

	# store string length in variable as specified by caller
	typeset -g "${var}"="${length}"
}

prompt_pure_preprompt_render() {
	setopt localoptions noshwordsplit

	# Set color for git branch/dirty status, change color if dirty checking has
	# been delayed.
	local git_color=242
	[[ -n ${prompt_pure_git_last_dirty_check_timestamp+x} ]] && git_color=red

	# Initialize the preprompt array.
	local -a preprompt_parts

	# Set the path.
	preprompt_parts+=('%F{blue}%~%f')

	# Add git branch and dirty status info.
	typeset -gA prompt_pure_vcs_info
	if [[ -n $prompt_pure_vcs_info[branch] ]]; then
		preprompt_parts+=("%F{$git_color}"'${SPACESHIP_GIT_PREFIX}%{%B%}${SPACESHIP_GIT_BRANCH_PREFIX}${prompt_pure_vcs_info[branch]}${prompt_pure_git_dirty}%f%{%b%}')
	fi
	# Git pull/push arrows.
	if [[ -n $prompt_pure_git_arrows ]]; then
		preprompt_parts+=('%F{cyan}${prompt_pure_git_arrows}%f')
	fi

	# Username and machine, if applicable.
	[[ -n $prompt_pure_username ]] && preprompt_parts+=('$prompt_pure_username')

  # =======================================
  # SPACESHIP parts
  # =======================================
  preprompt_parts+="$(spaceship_prompt)"

	# Execution time.
	[[ -n $prompt_pure_cmd_exec_time ]] && preprompt_parts+=('$SPACESHIP_EXEC_TIME_PREFIX%{%B%}%F{yellow}${prompt_pure_cmd_exec_time}%f%{%b%}')

	local cleaned_ps1=$PROMPT
	local -H MATCH MBEGIN MEND
	if [[ $PROMPT = *$prompt_newline* ]]; then
		# When the prompt contains newlines, we keep everything before the first
		# and after the last newline, leaving us with everything except the
		# preprompt. This is needed because some software prefixes the prompt
		# (e.g. virtualenv).
		cleaned_ps1=${PROMPT%%${prompt_newline}*}${PROMPT##*${prompt_newline}}
	fi
	unset MATCH MBEGIN MEND

	# Construct the new prompt with a clean preprompt.
	local -ah ps1
	ps1=(
		$prompt_newline           # Initial newline, for spaciousness.
		${(j. .)preprompt_parts}  # Join parts, space separated.
		$prompt_newline           # Separate preprompt and prompt.
		$cleaned_ps1
	)

	PROMPT="${(j..)ps1}"

	# Expand the prompt for future comparision.
	local expanded_prompt
	expanded_prompt="${(S%%)PROMPT}"

	if [[ $1 != precmd ]] && [[ $prompt_pure_last_prompt != $expanded_prompt ]]; then
		# Redraw the prompt.
		zle && zle .reset-prompt
	fi

	typeset -g prompt_pure_last_prompt=$expanded_prompt
}

prompt_pure_precmd() {
	# check exec time and store it in a variable
	prompt_pure_check_cmd_exec_time
	unset prompt_pure_cmd_timestamp

	# shows the full path in the title
	prompt_pure_set_title 'expand-prompt' '%~'

	# preform async git dirty check and fetch
	prompt_pure_async_tasks

	# store name of virtualenv in psvar if activated
	psvar[12]=
	[[ -n $VIRTUAL_ENV ]] && psvar[12]="${VIRTUAL_ENV:t}"

	# print the preprompt
	prompt_pure_preprompt_render "precmd"
}

prompt_pure_async_git_aliases() {
	setopt localoptions noshwordsplit
	local dir=$1
	local -a gitalias pullalias

	# we enter repo to get local aliases as well.
	builtin cd -q $dir

	# list all aliases and split on newline.
	gitalias=(${(@f)"$(command git config --get-regexp "^alias\.")"})
	for line in $gitalias; do
		parts=(${(@)=line})           # split line on spaces
		aliasname=${parts[1]#alias.}  # grab the name (alias.[name])
		shift parts                   # remove aliasname

		# check alias for pull or fetch (must be exact match).
		if [[ $parts =~ ^(.*\ )?(pull|fetch)(\ .*)?$ ]]; then
			pullalias+=($aliasname)
		fi
	done

	print -- ${(j:|:)pullalias}  # join on pipe (for use in regex).
}

prompt_pure_async_vcs_info() {
	setopt localoptions noshwordsplit
	builtin cd -q $1 2>/dev/null

	# configure vcs_info inside async task, this frees up vcs_info
	# to be used or configured as the user pleases.
	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:*' use-simple true
	# only export two msg variables from vcs_info
	zstyle ':vcs_info:*' max-exports 2
	# export branch (%b) and git toplevel (%R)
	zstyle ':vcs_info:git*' formats '%b' '%R'
	zstyle ':vcs_info:git*' actionformats '%b|%a' '%R'

	vcs_info

	local -A info
	info[top]=$vcs_info_msg_1_
	info[branch]=$vcs_info_msg_0_

	print -r - ${(@kvq)info}
}

# fastest possible way to check if repo is dirty
prompt_pure_async_git_dirty() {
	setopt localoptions noshwordsplit
	local untracked_dirty=$1 dir=$2

	# use cd -q to avoid side effects of changing directory, e.g. chpwd hooks
	builtin cd -q $dir

	if [[ $untracked_dirty = 0 ]]; then
		command git diff --no-ext-diff --quiet --exit-code
	else
		test -z "$(command git status --porcelain --ignore-submodules -unormal)"
	fi

	(( $? )) && echo "$(spaceship_git)"
}

prompt_pure_async_git_fetch() {
	setopt localoptions noshwordsplit
	# use cd -q to avoid side effects of changing directory, e.g. chpwd hooks
	builtin cd -q $1

	# set GIT_TERMINAL_PROMPT=0 to disable auth prompting for git fetch (git 2.3+)
	export GIT_TERMINAL_PROMPT=0
	# set ssh BachMode to disable all interactive ssh password prompting
	export GIT_SSH_COMMAND=${GIT_SSH_COMMAND:-"ssh -o BatchMode=yes"}

	command git -c gc.auto=0 fetch &>/dev/null || return 99

	# check arrow status after a successful git fetch
	prompt_pure_async_git_arrows $1
}

prompt_pure_async_git_arrows() {
	setopt localoptions noshwordsplit
	builtin cd -q $1
	command git rev-list --left-right --count HEAD...@'{u}'
}

prompt_pure_async_tasks() {
	setopt localoptions noshwordsplit

	# initialize async worker
	((!${prompt_pure_async_init:-0})) && {
		async_start_worker "prompt_pure" -u -n
		async_register_callback "prompt_pure" prompt_pure_async_callback
		typeset -g prompt_pure_async_init=1
	}

	typeset -gA prompt_pure_vcs_info

	local -H MATCH MBEGIN MEND
	if ! [[ $PWD = ${prompt_pure_vcs_info[pwd]}* ]]; then
		# stop any running async jobs
		async_flush_jobs "prompt_pure"

		# reset git preprompt variables, switching working tree
		unset prompt_pure_git_dirty
		unset prompt_pure_git_last_dirty_check_timestamp
		unset prompt_pure_git_arrows
		unset prompt_pure_git_fetch_pattern
		prompt_pure_vcs_info[branch]=
		prompt_pure_vcs_info[top]=
	fi
	unset MATCH MBEGIN MEND

	async_job "prompt_pure" prompt_pure_async_vcs_info $PWD

	# # only perform tasks inside git working tree
	[[ -n $prompt_pure_vcs_info[top] ]] || return

	prompt_pure_async_refresh
}

prompt_pure_async_refresh() {
	setopt localoptions noshwordsplit

	if [[ -z $prompt_pure_git_fetch_pattern ]]; then
		# we set the pattern here to avoid redoing the pattern check until the
		# working three has changed. pull and fetch are always valid patterns.
		typeset -g prompt_pure_git_fetch_pattern="pull|fetch"
		async_job "prompt_pure" prompt_pure_async_git_aliases $working_tree
	fi

	async_job "prompt_pure" prompt_pure_async_git_arrows $PWD

	# do not preform git fetch if it is disabled or working_tree == HOME
	if (( ${PURE_GIT_PULL:-1} )) && [[ $working_tree != $HOME ]]; then
		# tell worker to do a git fetch
		async_job "prompt_pure" prompt_pure_async_git_fetch $PWD
	fi

	# if dirty checking is sufficiently fast, tell worker to check it again, or wait for timeout
	integer time_since_last_dirty_check=$(( EPOCHSECONDS - ${prompt_pure_git_last_dirty_check_timestamp:-0} ))
	if (( time_since_last_dirty_check > ${PURE_GIT_DELAY_DIRTY_CHECK:-1800} )); then
		unset prompt_pure_git_last_dirty_check_timestamp
		# check check if there is anything to pull
		async_job "prompt_pure" prompt_pure_async_git_dirty ${PURE_GIT_UNTRACKED_DIRTY:-1} $PWD
	fi
}

prompt_pure_check_git_arrows() {
	setopt localoptions noshwordsplit
	local arrows left=${1:-0} right=${2:-0}

	(( right > 0 )) && arrows+=${PURE_GIT_DOWN_ARROW:-⇣}
	(( left > 0 )) && arrows+=${PURE_GIT_UP_ARROW:-⇡}

	[[ -n $arrows ]] || return
	typeset -g REPLY=$arrows
}

prompt_pure_async_callback() {
	setopt localoptions noshwordsplit
	local job=$1 code=$2 output=$3 exec_time=$4 next_pending=$6
	local do_render=0

	case $job in
		prompt_pure_async_vcs_info)
			local -A info
			typeset -gA prompt_pure_vcs_info

			# parse output (z) and unquote as array (Q@)
			info=("${(Q@)${(z)output}}")
			local -H MATCH MBEGIN MEND
			# check if git toplevel has changed
			if [[ $info[top] = $prompt_pure_vcs_info[top] ]]; then
				# if stored pwd is part of $PWD, $PWD is shorter and likelier
				# to be toplevel, so we update pwd
				if [[ $prompt_pure_vcs_info[pwd] = ${PWD}* ]]; then
					prompt_pure_vcs_info[pwd]=$PWD
				fi
			else
				# store $PWD to detect if we (maybe) left the git path
				prompt_pure_vcs_info[pwd]=$PWD
			fi
			unset MATCH MBEGIN MEND

			# update has a git toplevel set which means we just entered a new
			# git directory, run the async refresh tasks
			[[ -n $info[top] ]] && [[ -z $prompt_pure_vcs_info[top] ]] && prompt_pure_async_refresh

			# always update branch and toplevel
			prompt_pure_vcs_info[branch]=$info[branch]
			prompt_pure_vcs_info[top]=$info[top]

			do_render=1
			;;
		prompt_pure_async_git_aliases)
			if [[ -n $output ]]; then
				# append custom git aliases to the predefined ones.
				prompt_pure_git_fetch_pattern+="|$output"
			fi
			;;
		prompt_pure_async_git_dirty)
			local prev_dirty=$prompt_pure_git_dirty
			if (( code == 0 )); then
				unset prompt_pure_git_dirty
			else
				typeset -g prompt_pure_git_dirty="*"
			fi

			[[ $prev_dirty != $prompt_pure_git_dirty ]] && do_render=1

			# When prompt_pure_git_last_dirty_check_timestamp is set, the git info is displayed in a different color.
			# To distinguish between a "fresh" and a "cached" result, the preprompt is rendered before setting this
			# variable. Thus, only upon next rendering of the preprompt will the result appear in a different color.
			(( $exec_time > 5 )) && prompt_pure_git_last_dirty_check_timestamp=$EPOCHSECONDS
			;;
		prompt_pure_async_git_fetch|prompt_pure_async_git_arrows)
			# prompt_pure_async_git_fetch executes prompt_pure_async_git_arrows
			# after a successful fetch.
			if (( code == 0 )); then
				local REPLY
				prompt_pure_check_git_arrows ${(ps:\t:)output}
				if [[ $prompt_pure_git_arrows != $REPLY ]]; then
					typeset -g prompt_pure_git_arrows=$REPLY
					do_render=1
				fi
			elif (( code != 99 )); then
				# Unless the exit code is 99, prompt_pure_async_git_arrows
				# failed with a non-zero exit status, meaning there is no
				# upstream configured.
				if [[ -n $prompt_pure_git_arrows ]]; then
					unset prompt_pure_git_arrows
					do_render=1
				fi
			fi
			;;
	esac

	if (( next_pending )); then
		(( do_render )) && typeset -g prompt_pure_async_render_requested=1
		return
	fi

	[[ ${prompt_pure_async_render_requested:-$do_render} = 1 ]] && prompt_pure_preprompt_render
	unset prompt_pure_async_render_requested
}

prompt_pure_setup() {
	# Prevent percentage showing up if output doesn't end with a newline.
	export PROMPT_EOL_MARK=''

	prompt_opts=(subst percent)

	# borrowed from promptinit, sets the prompt options in case pure was not
	# initialized via promptinit.
	setopt noprompt{bang,cr,percent,subst} "prompt${^prompt_opts[@]}"

	if [[ -z $prompt_newline ]]; then
		# This variable needs to be set, usually set by promptinit.
		typeset -g prompt_newline=$'\n%{\r%}'
	fi

	zmodload zsh/datetime
	zmodload zsh/zle
	zmodload zsh/parameter

	autoload -Uz add-zsh-hook
	autoload -Uz vcs_info
	autoload -Uz async && async

	add-zsh-hook precmd prompt_pure_precmd
	add-zsh-hook preexec prompt_pure_preexec

	# Disallow python virtualenvs from updating the prompt
  export VIRTUAL_ENV_DISABLE_PROMPT=true # From spaceship

  export SPACESHIP_PROMPT_ADD_NEWLINE=false
  export SPACESHIP_TIME_SHOW=true
  export SPACESHIP_TIME_SUFFIX=""

	# show username@host if logged in through SSH
	[[ "$SSH_CONNECTION" != '' ]] && prompt_pure_username='%F{242}%n@%m%f'

	# show username@host if root, with username in white
	[[ $UID -eq 0 ]] && prompt_pure_username='%F{white}%n%f%F{242}@%m%f'

	# if a virtualenv is activated, display it in grey
	PROMPT='%(12V.%F{242}%12v%f .)'

	# prompt turns red if the previous command didn't exit with 0
	PROMPT+='$(spaceship_vi_mode)$(spaceship_jobs)$(spaceship_exit_code)%(?.%F{magenta}.%F{red})${PURE_PROMPT_SYMBOL:-❯}%f '

  PS2='$(spaceship_ps2)'

  # LSCOLORS
  # Online editor: https://geoff.greer.fm/lscolors/
  export LSCOLORS="Gxfxcxdxbxegedabagacab"
  export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:ow=0;41:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:*.patch=00;34:*.o=00;32:*.so=01;35:*.ko=01;31:*.la=00;33'
  # Zsh to use the same colors as ls
  # Link: http://superuser.com/a/707567
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
}

prompt_pure_setup "$@"
