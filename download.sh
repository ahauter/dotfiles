echo "Installing system tools"
sudo apt-get update
sudo apt update
sudo apt install fd-find
sudo apt-get install i3
sudo apt-get install i3blocks
sudo apt-get install feh
sudo apt install fzf
sudo apt install curl
sudo apt install tmux

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
