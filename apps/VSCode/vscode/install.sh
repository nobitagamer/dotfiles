#!/bin/sh
if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	# from `code --list-extensions`
	modules="
Borke.puppet
DotJoshJohnson.xml
EditorConfig.EditorConfig
HookyQR.beautify
PeterJausovec.vscode-docker
WakaTime.vscode-wakatime
arcticicestudio.nord-visual-studio-code
be5invis.toml
caarlos0.language-prometheus
donjayamanne.python
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
foxundermoon.shell-format
haaaad.ansible
ipedrazas.kubernetes-snippets
lukehoban.Go
mauve.terraform
patbenatar.advanced-new-file
rebornix.Ruby
shanoor.vscode-nginx
technosophos.vscode-helm
timonwong.shellcheck
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
