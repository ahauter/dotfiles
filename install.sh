mkdir ~/.ssh
rm -rf ~/.ssh/config
ln -srf ./ssh_config ~/.ssh/config
rm -rf ~/.config/nvim
ln -srf ./nvimConfig "$HOME/.config/nvim"
rm -rf ~/.config/i3
ln -srf ./i3 "$HOME/.config/i3"
rm -rf ~/.fonts
ln -srf ./fonts "$HOME/.fonts"

# BASH :)
ln -srf ./bashrc "$HOME/.bashrc"
ln -srf ./startCodeSession.sh "$HOME/.startCodeSession"
ln -srf ./batteryLevel.sh "$HOME/.batteryLevel"
ln -srf ./cpu_usage.sh "$HOME/.cpu_usage"

#Oh My Bash
rm -rf ~/.oh-my-bash
ln -srf ./oh-my-bash "$HOME/.oh-my-bash"

#Vim wiki
rm -rf ~/vimwiki
ln -srf ~/Repositories/Personal/vimwiki ~/vimwiki
