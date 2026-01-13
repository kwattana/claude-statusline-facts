# Claude Code Status Line - Did You Know? Facts

A custom status line plugin for [Claude Code](https://claude.ai/claude-code) that displays random facts while Claude is thinking.

![Status Line Demo](https://img.shields.io/badge/facts-1000+-blue) ![Categories](https://img.shields.io/badge/categories-20-green) ![Python](https://img.shields.io/badge/python-3.6+-yellow)

## Features

- **1,000+ curated facts** across 20 categories
- **Category emojis** for visual context
- **Rotating facts** every 5 seconds
- **Colorized output** for better readability

## Categories

| Emoji | Category | Facts |
|-------|----------|-------|
| ✍️ | Writing | 50 |
| 🎮 | Gaming | 50 |
| ✈️ | Travel | 50 |
| 🎨 | Art | 50 |
| ⚡ | Famous Inventors | 50 |
| 🔢 | Math & Science | 50 |
| 🎬 | Movies, Music & Quotes | 50 |
| 💪 | Health & Wellness | 50 |
| 🦄 | Startups | 50 |
| 💡 | General/Mixed | 50 |
| 🚀 | Space & Science | 50 |
| 🐾 | Animals | 50 |
| 💻 | Technology | 50 |
| 📜 | History | 50 |
| 🤖 | AI | 50 |
| 🌉 | San Francisco | 50 |
| 🧗 | Rock Climbing | 50 |
| 🍎 | Food & Drink | 50 |
| 🌍 | Geography & Nature | 50 |
| 🎲 | Random Fun Facts | 50 |

## Installation

### Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/kwattana/claude-statusline-facts/main/install.sh | bash
```

### Manual Install

1. Copy `statusline.py` to your Claude config directory:

```bash
cp statusline.py ~/.claude/statusline.py
chmod +x ~/.claude/statusline.py
```

2. Add the following to your `~/.claude/settings.json`:

```json
{
  "statusLine": {
    "type": "command",
    "command": "python3 ~/.claude/statusline.py"
  }
}
```

3. Restart Claude Code.

## Example Output

```
🐾 Did you know? Sea otters hold hands while sleeping to keep from drifting apart.
🚀 Did you know? Saturn would float if you could find a bathtub big enough.
🤖 Did you know? Claude is named after Claude Shannon, the father of information theory.
🧗 Did you know? Alex Honnold free soloed El Capitan (3,000 ft) in 3 hours 56 minutes.
```

## Customization

### Add Your Own Facts

Edit `statusline.py` and add facts to any category:

```python
FACTS = {
    "🎲": [  # Random Fun Facts
        "Your custom fact here.",
        # ...
    ],
}
```

### Change Rotation Speed

Modify the seed divisor in `get_random_fact()`:

```python
# Change fact every 10 seconds instead of 5
seed = int(time.time() / 10)
```

### Add New Categories

Add a new emoji key with a list of facts:

```python
"🏀": [  # Sports
    "Michael Jordan was cut from his high school basketball team.",
    # ...
],
```

## Requirements

- Python 3.6+
- Claude Code CLI

## License

MIT License - see [LICENSE](LICENSE) for details.

## Contributing

Contributions welcome! Feel free to:
- Add new facts (keep them concise and interesting)
- Add new categories
- Fix any inaccuracies
- Improve the code

## Credits

Built for use with [Claude Code](https://claude.ai/claude-code) by Anthropic.
