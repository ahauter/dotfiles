echo "Installing system tools"
sudo apt-get update
sudo apt update
sudo apt install fd-find
sudo apt-get install i3
sudo apt-get install i3blocks
sudo apt-get install feh
sudo apt install fzf
sudo apt install curl
sudo apt install ripgrep
sudo apt install tmux
sudo apt install picom

echo "Installing Neovim"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

echo "Installing packer for nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


echo "Install gcc"
sudo apt install build-essential

echo "Install Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Install Golang"
curl -O -L https://go.dev/dl/go1.22.1.src.tar.gz 
rm -rf /usr/local/go && tar -C $HOME -xzf go1.22.1.linux-amd64.tar.gz
export $PATH=$PATH:"$HOME/go"
go install https://github.com/cosmtrek/air@latest

echo "Install NVM/Nodejs :("
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node

#install azure functions :/
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install azure-functions-core-tools-4
