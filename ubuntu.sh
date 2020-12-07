sudo apt update
sudo apt full-upgrade
sudo apt install git vim curl mlocate tree zsh jq snapd kitty zsh-syntax-highlighting nnn yamllint
dos2unix tlp tlp-rdw pavucontrol vlc htop dconf-editor nmap

sudo snap install kubectl --classic
sudo snap install spotify bashtop
sudo snap install --classic code 

mkdir -p ~/.local/bin
sudo gpasswd -a username audio

git clone https://gitlab.com/bgavan58/setup-files.git

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# install fonts
cd ~/.local/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
echo "font_family MesloLGS NF" >> ~/.config/kitty/kitty.conf

cd; rm .bash_history .bash_logout .bashrc 

# tfenv - https://github.com/tfutils/tfenv
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
ln -s ~/.tfenv/bin/* /usr/local/bin
terraform install
tfenv use 0.13.5

# Change defaults - tiling for popOS?
sudo update-alternatives --set x-terminal-emulator /usr/bin/kitty

# cloud boyz
## Azure
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login


wget https://go.microsoft.com/fwlink/p/\?LinkID\=2112886\&clcid\=0x1009\&culture\=en-ca\&country\=CA -O /tmp/teams.deb
sudo dpkg -i /tmp/teams.deb

# https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu
# Add Microsoft signing key and package repo
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
sudo dpkg -i /tmp/packages-microsoft-prod.deb

# Install the SDKs and runtimes
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0 dotnet-runtime-5.0 \
      dotnet-sdk-3.1 dotnet-runtime-3.1

sudo apt full-upgrade
 sudo apt-get install ubuntu-restricted-extras 
