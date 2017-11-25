alias reload!='exec "$SHELL" -l'

# ls
# alias ls='ls --group-directories-first --color=auto --classify' # classify symbols

# Use colors in coreutils utilities output
# alias ls='ls --color=auto'
alias ls='exa'
alias grep='grep --color'

# ls aliases
alias ll='exa -glh --git --color-scale'
alias la='exa -glah --git --color-scale'
alias l='exa -lh --git --color-scale'
# alias ll='ls -lah'
# alias la='ls -A'
# alias l='ls'

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# Update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install -q
    )
}

# Use pip without requiring virtualenv
syspip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

syspip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# cd to git root directory
alias cdgr='cd "$(git root)"'

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# Jump to directory containing file
jump() {
    cd "$(dirname ${1})"
}

# cd replacement for screen to track cwd (like tmux)
scr_cd()
{
    builtin cd $1
    screen -X chdir "$PWD"
}

if [[ -n $STY ]]; then
    alias cd=scr_cd
fi

# Go up [n] directories
up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

# Execute a command in a specific directory
xin() {
    (
        cd "${1}" && shift && ${@}
    )
}

# Check if a file contains non-ascii characters
nonascii() {
    LC_ALL=C grep -n '[^[:print:][:space:]]' "${1}"
}

# Fetch pull request

fpr() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        echo "error: fpr must be executed from within a git repository"
        return 1
    fi
    (
        cdgr
        if [ "$#" -eq 2 ]; then
            local repo="${PWD##*/}"
            local user="${1}"
            local branch="${2}"
        elif [ "$#" -eq 3 ]; then
            local repo="${1}"
            local user="${2}"
            local branch="${3}"
        else
            echo "Usage: fpr [repo] username branch"
            return 1
        fi

        git fetch "git@github.com:${user}/${repo}" "${branch}:${user}/${branch}"
    )
}

# Serve current directory

serve() {
    ruby -run -e httpd . -p "${1:-8080}"
}

# Mirror a website
alias mirrorsite='wget -m -k -K -E -e robots=off'

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'



###############################################################################
# Aliases & Functions
###############################################################################
# basics
alias restart="exec $SHELL"
alias c=clear
clr() {
  clear
  [[ -n $TMUX ]] && tmux clear-history
}
stripansi() {
  [[ $UNAME == darwin ]] && \
    sed -E "s/"$'\E'"\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g" ||
    sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g"
}
word() {
  awk "{print \$$1}"
}

alias cm='command'

alias rrm='command rm'

alias unixtime='date +%s'

alias vimrc='vim ~/.vimrc'
alias vis='vim -u ~/.vim/vimrc_small'
alias vimrc_small='vis ~/.vim/vimrc_small'

vim-profile() {
  $DOTFILES/vim-profiler/vim-profiler.py ${@:1:$((${#@} - 1))} $(which nvim) ${@: -1}
}

swpclean() {
  find . -name '*.sw*' -exec /bin/rm -rf {} \;
}

vimreplace() {
  [[ $# < 2 ]] && echo 'Not enough arguments' && return

  local search
  (( $+commands[ag] )) && \
    search="ag -l --nocolor $1" || \
    search="grep -rl $1 *"

  local -a matches
  while read line; do
    matches+=$line
  done < <(eval $search)

  # eventignore magic from http://stackoverflow.com/a/12487439
  vim -c "bufdo set eventignore-=Syntax | %s/$1/$2/gec | update" ${matches}
}

# zsh
alias zshso='source ${ZDOTDIR:-$HOME}/.zshrc'
alias zshenv='vim ${ZDOTDIR:-$HOME}/.zshenv'
alias zshrc='vim ${ZDOTDIR:-$HOME}/.zshrc'
alias zprofile='vim ${ZDOTDIR:-$HOME}/.zprofile'
# alias zpreztorc='vim ~/.zpreztorc'
alias zlogin='vim ${ZDOTDIR:-$HOME}/.zlogin'
alias zlocal='vim ${ZDOTDIR:-$HOME}/.zshrc.local'

# tmux
alias t='tmux'
alias tl='tmux ls'
alias detach='tmux detach'
alias tmuxconf="vim ~/.tmux.conf"
alias tconf='tmuxconf'
alias tname='tmux rename-session'
tswap() {
  tmux swap-window -t $1
}
notmux() {
  touch ~/.no_tmux
}
if [[ -z $TMUX ]]; then
  tmux() { [[ -z "$@" ]] && command tmux new -A -s main || command tmux "$@" }
fi

tkill() {
  case $1 in
    (-1)
      command tmux kill-session;;
    (-a|--all)
      command tmux kill-session -a;;
    (*)
      command tmux kill-session -a
      command tmux kill-session;;
  esac
}

# CSV
# source: https://chrisjean.com/view-csv-data-from-the-command-line/

csvless() {
  local outputcmd
  if [[ -n $2 ]]; then
    outputcmd="head -n $2"
  else
    outputcmd="cat"
  fi
  eval "$outputcmd $1" | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
}

# julia
alias jl=julia

rpdb() {
  socat readline tcp:${2:-0.0.0.0}:${1:-4444}
}

ctags() {
  unset -f ctags && \
    brew list ctags >/dev/null 2>&1 && \
    alias ctags="$(brew --prefix)/bin/ctags"
  ctags "$@"
}

# modified from http://unix.stackexchange.com/questions/13464
upsearch() {
  local curdir="$PWD"
  while 1; do
    [[ -f "$curdir/$1" ]] && echo "$curdir/$1" && return
    [[ $curdir == "/" ]] && return
    curdir=$(dirname "$curdir")
  done
}

dmake() { # django
  local django=$(upsearch manage.py)
  [[ -n $django ]] && \
    (cd $(dirname $django) && python $django "$@") || \
    echo "Couldn't find manage.py"
}


if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias ag=tag
fi
# if (( $+commands[peco] )); then
#   tag() { nvim $(rg -n $1 | peco | awk -F\: '{print "+"$2,$1}') }
#   # alias ag=tag
# fi

# other
alias tmp="cd $HOME/tmp"
alias texclean='rm -rf *.aux *.fdb_latexmk *.fls *.log *.synctex.gz 2>/dev/null'

# NOTE: overrides unix `last` command, but that's not too useful anyway
last() {
  [[ -z $TMUX && -z $NVIM_LISTEN_ADDRESS ]] && echo 'Sorry, not in tmux or nvim. :(' && return

  local prev_cmd
  prev_cmd=$(fc -ln -1 | sed -e 's/[\/&]/\\&/g')

  local last_out=$TMPDIR/last.$$
  if [[ -n $NVIM_LISTEN_ADDRESS ]]; then
    nvr -c "w! $last_out" >/dev/null
  else
    tmux capture-pane -pe -S - >! $last_out
  fi

  tail -r $last_out | awk "/$PROMPT_DELIM/{p=!p;if(p){next}else{exit}} p" | tail -r
}
if (( $+commands[fpp] )); then
  alias lp='last | fpp'
fi

psag() {
  ps aux | ag "[${1[1]}]${1[2,-1]}"
}

pskill() {
  ps aux | ag "[${1[1]}]${1[2,-1]}" | awk '{print $2}' | sudo xargs -I% command kill ${2:-} %
}

###############################################################################
# Builtin overrides
###############################################################################
if [[ $UNAME == darwin ]]; then
  alias fancyls="ls -G"
else
  alias fancyls="ls --group-directories-first --color=auto"
fi

# override cd to do ls and vim when necessary
better_cd() {
  set -- ${1//,/.} # replace commas , with periods . (looking at u Golang)
  if [[ -f $1 ]]; then
    local fdir=$(dirname $1)
    [[ -d $fdir ]] && builtin cd $fdir && fancyls && vim $(basename $1) ${*:2}
  else
    builtin cd "$@" && fancyls
  fi
}
# alias cd=better_cd
