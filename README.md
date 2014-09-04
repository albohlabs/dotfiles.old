alboh's dotfiles
================

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

### OS X

``` bash
./.osx
``` 

### native aps
``` bash
brew bundle ~/Caskfile
``` 

## Inspired by 

- [chrishunt/dot-files](https://github.com/chrishunt/dot-files)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
