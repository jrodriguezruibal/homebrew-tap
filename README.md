# Homebrew Tap for zohodesk-cli

This is a Homebrew tap for [zohodesk-cli](https://github.com/jrodriguezruibal/zohodesk-cli).

## Installation

```bash
brew tap jrodriguezruibal/tap
brew install zohodesk-cli
```

## Usage

After installation, run the configuration wizard:

```bash
zohodesk-cli config init
```

Then use the CLI:

```bash
# List tickets
zohodesk-cli tickets list

# Get ticket details
zohodesk-cli tickets get <ticket-id>

# Create ticket
zohodesk-cli tickets create --subject "Subject" --email user@example.com

# JSON output for AI agents
zohodesk-cli tickets list --output json
```

## Documentation

For full documentation, see [zohodesk-cli README](https://github.com/jrodriguezruibal/zohodesk-cli#readme).