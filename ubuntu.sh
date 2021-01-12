sudo apt update
sudo apt full-upgrade
sudo apt install git vim curl mlocate tree zsh jq kitty zsh-syntax-highlighting nnn yamllint \
  dos2unix vlc htop dconf-editor nmap gnome-tweaks ntp npm nca python3-pip

#sudo snap install kubectl --classic
#sudo snap install spotify bashtop
#sudo snap install --classic code 

mkdir -p ~/.local/bin

git clone https://github.com/bgavan58/setup-files.git
cp -r kitty ~/.config/

sudo apt-get install ubuntu-restricted-extras 
sudo updatedb
git config pull.rebase false
git config --global --edit
