# Homebrew Tap for eust-w

Install codexswitch preview:

```sh
brew tap eust-w/tap
brew install --cask codexswitch
```

The current codexswitch cask points to the unsigned `preview-0.1.0` DMG and is
limited to Apple Silicon Macs running macOS 12 or newer.

Uninstall:

```sh
brew uninstall --cask codexswitch
```

Remove local app data:

```sh
brew uninstall --cask --zap codexswitch
```
