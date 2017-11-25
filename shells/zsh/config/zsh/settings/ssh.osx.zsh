# macOS only
# -A: Add identities to the agent using any passphrases stored in your keychain.
# -K: When adding identities, each passphrase will also be stored in your keychain.
#     When removing identities with -d, each passphrase will be removed from your keychain.
if [[ -S "$SSH_AUTH_SOCK" && $UNAME == darwin ]]; then
	ssh-add -A -K
fi
