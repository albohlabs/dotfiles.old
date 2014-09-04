alboh's dotfiles and more
=========================

## 2. [Xcode](https://developer.apple.com/xcode/) and ["Command Line Tools"](https://developer.apple.com/downloads/index.action)

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

### packages
``` bash
brew bundle ~/Brewfile
```

### vim
``` bash
brew install macvim --env-std --override-system-vim ack ctags 
```

In vim use `:BundleInstall`

### Font

Download [Source™ Code Pro](https://store1.adobe.com/cfusion/store/html/index.cfm?event=displayFontPackage&code=1960)

## native aps
``` bash
brew bundle ~/Caskfile
``` 
###### Manually

* [Dash](http://kapeli.com/) for documentation lookup
* [Flamingo](https://itunes.apple.com/us/app/flamingo/id728181573) for messaging
* [TweetDeck](https://itunes.apple.com/us/app/tweetdeck/id485812721?ls=1&mt=12) for tweet scheduling
* [Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver) for ZIP, RAR, etc
* [1Password](https://agilebits.com/onepassword) for password management

## Inspired by 

- [chrishunt/dot-files](https://github.com/chrishunt/dot-files)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [skwp/dotfiles](https://github.com/skwp/dotfiles)
- [paulmillr/dotfiles](https://github.com/paulmillr/dotfiles)
