sudo apt-get update
sudo apt update
sudo apt install fd-find
sudo apt-get install i3
sudo apt-get install i3blocks
sudo apt-get install feh
sudo apt install fzf
# nvim install 
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

#packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#install go
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
