#chsh -s $(which zsh)
#mkdir ~/zsh
ln -sv ~/dotfiles/.profile ~
ln -sv ~/dotfiles/.zshrc ~
ln -sv ~/dotfiles/.zsh_plugins.sh ~
source ~/.zshrc