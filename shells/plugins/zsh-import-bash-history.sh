#!/usr/bin/env bash

# See https://www.perrotta.dev/2022/02/transfer-bash-history-to-zsh/

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

rm -f ~/.zsh_history_imported
cat ~/.bash_history | $SCRIPT_DIR/zsh-import-bash-history.py >> ~/.zsh_history_imported
strings -eS ~/.zsh_history_imported | sponge ~/.zsh_history_imported
echo "$(wc -l ~/.bash_history | cut -f1 -d' ') lines from .bash_history imported."

# Use following command to append ZSH history with imported lines.
cp $HISTFILE $HISTFILE.bak
echo "Before import lines count: $(wc -l $HISTFILE | cut -f1 -d' ')"
cat ~/.zsh_history_imported >> $HISTFILE
echo "  After import lines count: $(wc -l $HISTFILE  | cut -f1 -d' ')"

## Dedup history, see https://stackoverflow.com/questions/72293670/delete-duplicate-commands-of-zsh-history-keeping-last-occurence
echo "Before dedup lines count: $(wc -l $HISTFILE | cut -f1 -d' ')"
rm -f ~/.zsh_history_deduped
sed ':start; /\\$/ { N; s/\\\n/\\\x00/; b start }' $HISTFILE | nl -nrz | tac | sort -t';' -u -k2 | sort | cut -d$'\t' -f2- | tr '\000' '\n' > ~/.zsh_history_deduped
echo "  After dedup lines count: $(wc -l ~/.zsh_history_deduped | cut -f1 -d' ')"
