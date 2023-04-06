# installation
sudo -I pacman -S --needed --noconfirm base-devel
sudo -I pacman -S --needed --noconfirm bat
sudo -I pacman -S --needed --noconfirm fd
sudo -I pacman -S --needed --noconfirm fish
sudo -I pacman -S --needed --noconfirm fzf
sudo -I pacman -S --needed --noconfirm github-cli
sudo -I pacman -S --needed --noconfirm starship
sudo -I pacman -S --needed --noconfirm tk
sudo -I pacman -S --needed --noconfirm wget
sudo -I pacman -S --needed --noconfirm which
sudo -I pacman -S --needed --noconfirm zip unzip

curl https://rtx.pub/install.sh | sh

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S google-chrome

# fish
echo `(which chsh)` | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

# rtx
fish -c "set -Ux STARSHIP_CONFIG $HOME/terra-d-conf/starship.toml"
fish -c "fish_add_path $HOME/.local/share/rtx/bin"
fish -c "rtx install awscli@2"
fish -c "rtx global awscli@2"
fish -c "rtx install lua@5"
fish -c "rtx global lua@5"
fish -c "rtx install node@18"
fish -c "rtx global node@18"
fish -c "rtx install python@3.11"
fish -c "rtx global python@3.11"
fish -c "rtx install rust@1"
fish -c "rtx global rust@1"

echo "Please restart shell."
