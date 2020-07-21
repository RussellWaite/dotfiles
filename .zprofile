# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#source ~/.zsh_plugins.sh

alias start_i3='XDG_SESSION_TYPE=wayland dbus-run-session i3'
alias start_gnome='XDG_SESSION_TYPE=wayland dbus-run-session gnome-session'
echo ".zprofile has been sourced"