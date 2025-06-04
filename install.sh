rm -rf ~/.ssh/config
ln -srf ./ssh_config ~/.ssh/config
rm -rf ~/.config/nvim
ln -srf ./nvimConfig "$HOME/.config/nvim"
rm -rf ~/.config/i3
ln -srf ./i3 "$HOME/.config/i3"
rm -rf ~/.fonts
ln -srf ./fonts "$HOME/.fonts"


#Oh My Bash
rm -rf ~/.oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
rm -rf "$HOME/.bashrc"
rm -rf "$HOME/.bash_aliases"

# BASH :)
ln -srf ./bash_aliases "$HOME/.bash_aliases"
ln -srf ./bashrc "$HOME/.bashrc"
ln -srf ./startCodeSession.sh "$HOME/.startCodeSession"
ln -srf ./batteryLevel.sh "$HOME/.batteryLevel"
ln -srf ./cpu_usage.sh "$HOME/.cpu_usage"

#Vim wiki
rm -rf ~/vimwiki
ln -srf ~/Repositories/Personal/vimwiki ~/vimwiki
