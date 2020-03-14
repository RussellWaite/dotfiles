# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#trying out a more efficient path update (i.e. don't keep adding duplicates)
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

export GOPATH=$HOME/go
pathadd $GOPATH/bin

#pathadd $HOME/.linkerd2/bin
#pathadd ${KREW_ROOT:-$HOME/.krew}/bin

export EDITOR=nvim

# setup expected defaults for ohmyzsh based plugins (kubectl for completion)
if [[ -z "$ZSH" ]]; then
  ZSH=~/zsh
fi
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

# find out how we got 256 colours - multiple strategies are used... chrissicool/zsh-256color
#ZSH_256COLOR_DEBUG=1

# fix for using powerlevel10k in tmux
#export TERM=screen-256color
export TERM="xterm-256color"

source ~/dotfiles/.powerlevel10k_config.sh
alias colours='f(){ for i in {0..255}; do printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done; }; f'

alias lsx='exa -lhaTR --git'

# and finally - load the lovely plugins... quickly
# using Antibody static loading - https://getantibody.github.io/usage/
# remember to run `antibody bundle < .zsh_plugins.txt > .zsh_plugins.sh` when you update your plugins
source ~/.zsh_plugins.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh
