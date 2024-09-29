# #
# # Add some special bindkeys for vi mode.
# #
# # Authors:
# #   Pablo Olmos de Aguilera <pablo at glatelier dot org>
# #
# # Tip:
# # To see the key combo you want to use just do:
# # cat > /dev/null
# # And press it
# # github.com/spicycode/ze-best-zsh-config

# bindkey -M viins '^A' beginning-of-line
# bindkey -M viins '^E' end-of-line

# bindkey -M viins 'jj' vi-cmd-mode
# bindkey -M viins 'jk' vi-cmd-mode
# bindkey -M viins '^R' history-incremental-search-backward
# bindkey -M vicmd '^R' history-incremental-search-backward

# #bindkey -M viins '^U' kill-whole-line # already defined?
# bindkey -M viins '^Y' yank

# # This is not working (yet)
# # See: https://github.com/zsh-users/zsh-syntax-highlighting/issues/99
# bindkey -M viins '^[y' yank-pop

# # Use Ctrl + Arrow
# bindkey -M viins '^[[1;5D' emacs-backward-word
# bindkey -M viins '^[[1;5C' emacs-forward-word

# # make Escape in vicmd mode do nothing
# unset BEEP
# bindkey -M vicmd '\e' beep

# ###############################################################################
# # Key maps
# ###############################################################################
# # zsh-history-substring-search
# if zplug check zsh-users/zsh-history-substring-search; then
#   zmodload zsh/terminfo

#   bindkey '^[[A' history-substring-search-up
#   bindkey '^[[B' history-substring-search-down

#   [ -n "${terminfo[kcuu1]}" ] && bindkey "${terminfo[kcuu1]}" history-substring-search-up
#   [ -n "${terminfo[kcud1]}" ] && bindkey "${terminfo[kcud1]}" history-substring-search-down

#   for keymap in 'emacs' 'viins'; do
#     bindkey -M "$keymap" "$key_info[Control]P" history-substring-search-up
#     bindkey -M "$keymap" "$key_info[Control]N" history-substring-search-down
#   done

#   bindkey -M vicmd 'k' history-substring-search-up
#   bindkey -M vicmd 'j' history-substring-search-down
# fi
