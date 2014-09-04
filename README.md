alboh's dotfiles and more
=========================

### [Xcode](https://developer.apple.com/xcode/) and [Command Line Tools](https://developer.apple.com/downloads/index.action)

1. App Store -> Xcode
2. terminal and install:

``` bash
xcode-select --install
```

### oh-my-zsh
``` bash
curl -L http://install.ohmyz.sh | sh
``` 

### [Homebrew](http://brew.sh/)
``` bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
``` 

### [powerline](https://powerline.readthedocs.org/en/latest/installation/osx.html)
``` bash
brew install python
``` 

``` bash
pip install --user git+git://github.com/Lokaltog/powerline
``` 

### Packages
``` bash
brew bundle ~/Brewfile
```

### Vim
``` bash
brew install macvim --env-std --override-system-vim ack ctags 
```

In vim use `:BundleInstall`

### Font

Download [Source™ Code Pro](https://store1.adobe.com/cfusion/store/html/index.cfm?event=displayFontPackage&code=1960)

## Native apps
``` bash
brew bundle ~/Caskfile
``` 
###### Manually

* [Dash](http://kapeli.com/) for documentation lookup
* [TweetDeck](https://itunes.apple.com/us/app/tweetdeck/id485812721?ls=1&mt=12) for twitter
* [BetterZip](https://itunes.apple.com/de/app/betterzip/id415086549?mt=12) for ZIP, RAR, etc
* [Hydra](http://mjolnir.io/) for window management
* [Instacast](http://vemedio.com/products/instacast-mac) for podcast
* [CleanApp](http://www.syniumsoftware.com/de/cleanapp/) for uninstalling
* [Monosnap](https://itunes.apple.com/de/app/monosnap/id540348655?mt=12) for screenshots
* [Soulver](https://itunes.apple.com/de/app/soulver/id413965349?mt=12) for calculations
* [Radium](https://itunes.apple.com/de/app/radium-perfect-internet-radio/id597611879?mt=12) for radio
* [Pecunia](https://itunes.apple.com/de/app/radium-perfect-internet-radio/id597611879?mt=12) for money
* [Vox](https://itunes.apple.com/de/app/vox/id461369673?mt=12) for music
* [Texpad](https://itunes.apple.com/de/app/texpad-latex-editor/id458866234?mt=12) for LaTeX
* [BusyCal 2](https://itunes.apple.com/de/app/busycal-2/id567245998?mt=12) better iCal

## Inspired by 

- [chrishunt/dot-files](https://github.com/chrishunt/dot-files)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [skwp/dotfiles](https://github.com/skwp/dotfiles)
- [paulmillr/dotfiles](https://github.com/paulmillr/dotfiles)
- [gist.github.com/zenorocha/7159780](https://gist.github.com/zenorocha/7159780)
