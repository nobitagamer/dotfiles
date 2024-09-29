# Return if reqs are not found
if (( ! $+commands[git] )); then
  return 1
fi

# # Use hub (http://hub.github.com/) if available
# if (( $+commands[hub] )); then
#   alias git=hub
#   compdef g=hub
# else
#   compdef g=git
# fi

# conflicts with gpa (GnuPG Privacy Assistant)
unalias gpa 2>/dev/null

# git related aliases
alias gag='git exec ag'

# invert prezto default aliases
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules}'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules} --short'

alias gcv='git commit --verbose'

alias gll='git log --topo-order --pretty=oneline --abbrev-commit --graph --decorate --all'

# git
alias gitconfig='vim ~/.gitconfig'
alias gitignore_global='vim ~/.gitignore_global'
alias gs='git status'

# context from root of git directory
# gr() {
#   local root=$(command git rev-parse --show-toplevel 2> /dev/null)
#   [[ $? == 0 ]] && cd $root || cd "$@"
# }
# alias '$'=gr

# No arguments: `git status`
# With arguments: acts like `git`
unalias g 2>/dev/null
function g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    # git status
    git status --short --ignore-submodules=${_git_status_ignore_submodules}
  fi
}

# Allows commit message without typing quotes (can't have quotes in the commit msg though).
# https://github.com/r00k/dotfiles/blob/master/zsh/functions#L44
unalias gc 2>/dev/null
function gc {
  git commit -m "$*"
}

# Don't try to glob with zsh so git can do the right stuff
# alias git='noglob git'

rg_git_list() {
  # lists all files in a git repository, marking ignored files as yellow
  local root is_git_dir
  if [[ -n $1 ]]; then
    root=$1
    is_git_dir=1
  else
    root=$(git rev-parse --show-toplevel 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      is_git_dir=1
    else
      is_git_dir=0
      root=$PWD
    fi
  fi

  local rg_args_inverse_git_ignore=()
  if [[ $is_git_dir -eq 1 && -f $root/.gitignore ]]; then
    cat $root/.gitignore | while read rule; do
      rule=${rule%%\#*}
      [[ -n $rule ]] && rg_args_inverse_git_ignore+=("-g '$rule'")
    done
  fi

  local ylw=$(tput setaf 3)
  local clr=$(tput sgr0)
  {
    # regular files
    chdir $root && rg -g '!.git' --hidden --files;

    # gitignored files
    if [[ $is_git_dir -eq 1 && -f $root/.gitignore ]]; then
      chdir $root && eval "rg --no-ignore-vcs ${rg_args_inverse_git_ignore[@]} --files" | \
        while read match; do echo -e "$ylw$match$clr"; done;
    fi;
  }
}

