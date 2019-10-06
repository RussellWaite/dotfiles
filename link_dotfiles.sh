#chsh -s $(which zsh)

#need to check for ~/zsh and create if not there
#mkdir ~/zsh

#need to check presence of .profile and .zshrc first 
ln -sv ~/dotfiles/.profile ~
ln -sv ~/dotfiles/.zshrc ~
ln -sv ~/dotfiles/.vimrc ~
ln -sv ~/dotfiles/.tmux.conf ~
ln -sv ~/dotfiles/alacritty.yml ~/.config/alacritty.yml
#need to install antibody if not already installed - or just warn user...

antibody bundle < .zsh_plugins.txt > .zsh_plugins.sh
ln -sv ~/dotfiles/.zsh_plugins.sh ~
source ~/.zshrc
