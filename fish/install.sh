# installation
sudo pacman -S --needed base-devel
sudo pacman -S --needed bat
sudo pacman -S --needed fd
sudo pacman -S --needed fish
sudo pacman -S --needed fzf
sudo pacman -S --needed github-cli
sudo pacman -S --needed starship
sudo pacman -S --needed tk
sudo pacman -S --needed which
sudo pacman -S --needed zip unzip

curl https://rtx.pub/install.sh | sh

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S google-chrome

# fish
echo `(which chsh)` | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

mkdir -p $HOME/.config/fish
echo fish > $HOME/.config/fish/config.fish
echo "SETUVAR --export XDG_CONFIG_HOME:/home/terra/terra\\x2dd\\x2dconf" >> /home/terra/.config/fish_variables

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

# rtx
fish -c "set -Ux STARSHIP_CONFIG $HOME/terra-d-conf/starship.toml"
fish -c "fish_add_path $HOME/.local/share/rtx/bin"
fish -c "rtx install awscli@2"
fish -c "rtx global awscli@2"
fish -c "rtx install node@18"
fish -c "rtx global node@18"
fish -c "rtx install python@3.11"
fish -c "rtx global python@3.11"
fish -c "rtx install rust@1"
fish -c "rtx global rust@1"


echo "Please restart shell."
