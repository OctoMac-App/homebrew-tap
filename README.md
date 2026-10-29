# OctoMac Homebrew tap

Install [OctoMac](https://github.com/OctoMac-App/OctoMac), the Mac app for OctoPrint 3D printers, with [Homebrew](https://brew.sh):

```sh
brew install --cask octomac-app/tap/octomac
```

OctoMac updates itself, so you don't need `brew upgrade` for it. To remove it, and everything it stores on your Mac:

```sh
brew uninstall --zap --cask octomac
```

The cask is updated automatically with each OctoMac release.
