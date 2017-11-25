# ZSH Options
# man zshoptions

setopt INTERACTIVE_COMMENTS      # allow the use of `# ` in the command line

setopt APPEND_HISTORY            # allow multiple terminal sessions to append
setopt HIST_REDUCE_BLANKS        # remove extra blanks for each command line

# problems with hub completion???
# setopt COMPLETE_ALIASES          # make the alias a distinct command for completion purposes

# [Override prezto/modules/directory] don't warn when overwriting existing file https://unix.stackexchange.com/questions/212127/zsh-disable-file-exists-warning-with-redirection
setopt clobber

# unsetopt LIST_BEEP               # no more beeps
unsetopt CORRECT                 # disable autocorrect suggestions for commands (ex: lear -> clear)
