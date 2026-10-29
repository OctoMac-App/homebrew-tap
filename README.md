# OctoMac Homebrew tap

Install [OctoMac](https://github.com/OctoMac-App/OctoMac), the Mac app for OctoPrint 3D printers, with [Homebrew](https://brew.sh):

```sh
brew tap octomac-app/tap
brew trust octomac-app/tap
brew install --cask octomac
```

`brew trust` tells Homebrew it may load this tap. Homebrew 7 and later ask for it for any tap outside Homebrew's own; older versions don't have the command and don't need it.

OctoMac updates itself, so you don't need `brew upgrade` for it. To remove it, and everything it stores on your Mac:

```sh
brew uninstall --zap --cask octomac
```

The cask is updated automatically with each OctoMac release.
