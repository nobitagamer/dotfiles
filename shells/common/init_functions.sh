#!/bin/sh

unalias debug_timestamp 2>/dev/null || true

# Only show timestamp if DEBUG is set
debug_timestamp() { [ -z "$DEBUG" ] || echo "$(date +"%T"): "; }

# Only echo if DEBUG is set
debug_echo() { [ -z "$DEBUG" ] || echo "$(date +"%T"): $1"; }
