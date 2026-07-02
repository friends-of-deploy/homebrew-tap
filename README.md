# friends-of-deploy Homebrew Tap

Homebrew casks for [friends-of-deploy](https://github.com/friends-of-deploy)'s macOS apps.

## Install

```bash
brew install --cask friends-of-deploy/tap/deploybar
```

`brew` resolves `friends-of-deploy/tap` to this repository
(`friends-of-deploy/homebrew-tap`) and taps it automatically, so a separate
`brew tap` step is not required.

## Available casks

| Cask | Description |
|------|-------------|
| [`deploybar`](Casks/deploybar.rb) | Native macOS menu bar app for monitoring Vercel deployments |

## Updating

```bash
brew update
brew upgrade --cask deploybar
```

## How releases work

Cask versions track the [DeployBar releases](https://github.com/friends-of-deploy/deploybar/releases).
Each tagged release builds, signs, and notarizes a `.dmg`, then bumps the
`version` and `sha256` in `Casks/deploybar.rb` here.
