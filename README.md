# Homebrew Tap for PortX CLI

This is the official Homebrew tap for the PortX CLI (`ptx`).

## Installation

```sh
brew tap portx-labs/portx-tap
brew trust --formula portx-labs/portx-tap/ptx
brew install ptx
```

Homebrew requires an explicit trust grant before it will run a formula from a
third-party tap, so the `brew trust` step is not optional — skip it and the
install fails.

## Upgrade

```sh
brew upgrade ptx
```

## Uninstall

```sh
brew uninstall ptx
brew untap portx-labs/portx-tap
```
