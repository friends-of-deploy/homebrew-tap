# RadnoK Homebrew Tap

Homebrew casks for [RadnoK](https://github.com/RadnoK)'s macOS apps.

## Install

```bash
brew install --cask RadnoK/tap/vercelbar
```

`brew` resolves `RadnoK/tap` to this repository (`RadnoK/homebrew-tap`) and
taps it automatically, so a separate `brew tap` step is not required.

## Available casks

| Cask | Description |
|------|-------------|
| [`vercelbar`](Casks/vercelbar.rb) | Native macOS menu bar app for monitoring Vercel deployments |

## Updating

```bash
brew update
brew upgrade --cask vercelbar
```

## How releases work

Cask versions track the [VercelBar releases](https://github.com/RadnoK/vercelbar/releases).
Each tagged release builds, signs, and notarizes a `.dmg`, then bumps the
`version` and `sha256` in `Casks/vercelbar.rb` here.
