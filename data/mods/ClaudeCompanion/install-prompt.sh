#!/bin/bash
# Installs the CDDA Claude Companion system prompt to the expected location.
# The C++ code looks for the prompt file at:
#   Windows: %USERPROFILE%\.cdda-claude-system-prompt.md
#   Linux/Mac: ~/.cdda-claude-system-prompt.md

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROMPT_FILE="$SCRIPT_DIR/system-prompt.md"

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    DEST="$USERPROFILE/.cdda-claude-system-prompt.md"
else
    DEST="$HOME/.cdda-claude-system-prompt.md"
fi

cp "$PROMPT_FILE" "$DEST"
echo "System prompt installed to: $DEST"
echo ""
echo "Make sure 'claude' CLI is on your PATH, then start CDDA with the"
echo "Claude Companion mod enabled. Activate the AI survival companion"
echo "item to launch a Claude session with full game context."
