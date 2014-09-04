alboh's dotfiles
================

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

### native aps
``` bash
brew bundle ~/Caskfile
``` 

### Font

Download [Source™ Code Pro](https://store1.adobe.com/cfusion/store/html/index.cfm?event=displayFontPackage&code=1960)

## Inspired by 

- [chrishunt/dot-files](https://github.com/chrishunt/dot-files)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [skwp/dotfiles](https://github.com/skwp/dotfiles)
- [paulmillr/dotfiles](https://github.com/paulmillr/dotfiles)
