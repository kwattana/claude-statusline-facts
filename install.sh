#!/bin/bash

# Claude Code Status Line - Facts Installer
# Installs the "Did You Know?" facts status line plugin

set -e

CLAUDE_DIR="$HOME/.claude"
SCRIPT_URL="https://raw.githubusercontent.com/kwattana/claude-statusline-facts/main/statusline.py"

echo "Installing Claude Code Status Line - Did You Know? Facts..."

# Create .claude directory if it doesn't exist
if [ ! -d "$CLAUDE_DIR" ]; then
    echo "Creating $CLAUDE_DIR directory..."
    mkdir -p "$CLAUDE_DIR"
fi

# Download the statusline script
echo "Downloading statusline.py..."
curl -fsSL "$SCRIPT_URL" -o "$CLAUDE_DIR/statusline.py"
chmod +x "$CLAUDE_DIR/statusline.py"

# Check if settings.json exists
SETTINGS_FILE="$CLAUDE_DIR/settings.json"

if [ -f "$SETTINGS_FILE" ]; then
    echo "settings.json already exists."
    echo ""
    echo "Please add the following to your $SETTINGS_FILE manually:"
    echo ""
    echo '  "statusLine": {'
    echo '    "type": "command",'
    echo '    "command": "python3 ~/.claude/statusline.py"'
    echo '  }'
    echo ""
else
    echo "Creating settings.json..."
    cat > "$SETTINGS_FILE" << 'EOF'
{
  "statusLine": {
    "type": "command",
    "command": "python3 ~/.claude/statusline.py"
  }
}
EOF
fi

echo ""
echo "Installation complete!"
echo ""
echo "Restart Claude Code to see your new status line."
echo "You'll see random facts like:"
echo "  🐾 Did you know? Sea otters hold hands while sleeping."
echo ""
