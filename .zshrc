# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(git brew colored-man git-flow git)

source $ZSH/oh-my-zsh.sh

# User configuration
for file in ~/.{exports,functions,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

source /usr/local/bin/virtualenvwrapper.sh

# Always work in a tmux session if tmux is installed
if which tmux 2>&1 >/dev/null; then
    if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ]; then
        tmux attach -t hack || tmux new -s hack; exit
    fi
fi
