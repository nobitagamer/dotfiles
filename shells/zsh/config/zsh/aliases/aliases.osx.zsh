# Emacs
alias et='emacsclient -t'

# SSH
alias ssh-unsafe='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# utils
alias cleanup-osx-junks="find . -type f -name '.DS_Store' -ls -delete"

# shorthand
alias mkd=mkdcd
alias t=task
alias va=vagrant
alias wko=workon

# typo
alias taks=task
alias wokron=workon
alias wrkon=workon

# alias for rm (requires trash script)
if (( $+commands[trash] )); then
    alias rm=trash
fi

# copy to mac osx clipboard
copy() { cat $1 | pbcopy }

# core audio restart because apple tv sucks
alias fuckyouappletv='sudo killall coreaudiod'

# clean .DS_Store
dsclean() { find . -name ".DS_Store" -exec /bin/rm -rf {} \; }

# docker+tmux
docker-mount() {
    eval "$(docker-machine env default)"
    tmux setenv DOCKER_TLS_VERIFY $DOCKER_TLS_VERIFY
    tmux setenv DOCKER_HOST $DOCKER_HOST
    tmux setenv DOCKER_CERT_PATH $DOCKER_CERT_PATH
    tmux setenv DOCKER_MACHINE_NAME $DOCKER_MACHINE_NAME
}
