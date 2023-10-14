# installation
sudo -E pacman -Syu
sudo -E pacman -S --needed --noconfirm base-devel
sudo -E pacman -S --needed --noconfirm bat
sudo -E pacman -S --needed --noconfirm docker
sudo -E pacman -S --needed --noconfirm docker-compose
sudo -E pacman -S --needed --noconfirm fd
sudo -E pacman -S --needed --noconfirm fish
sudo -E pacman -S --needed --noconfirm fzf
sudo -E pacman -S --needed --noconfirm github-cli
sudo -E pacman -S --needed --noconfirm helix
sudo -E pacman -S --needed --noconfirm nushell
sudo -E pacman -S --needed --noconfirm ripgreg
sudo -E pacman -S --needed --noconfirm starship
sudo -E pacman -S --needed --noconfirm tk
sudo -E pacman -S --needed --noconfirm wget
sudo -E pacman -S --needed --noconfirm which
sudo -E pacman -S --needed --noconfirm zip unzip

curl https://rtx.pub/install.sh | sh

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S google-chrome

# fish
echo `(which chsh)` | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

fish -c "set -Ux STARSHIP_CONFIG $HOME/terra-d-conf/starship.toml"
fish -c "set -Ux RIPGREP_CONFIG_PATH $HOME/.config/.ripgreprc"
fish -c "set -Ux PIPENV_VENV_IN_PROJECT 1"
fish -c "fish_add_path $HOME/.local/share/rtx/bin"

# nushell
mkdir -p ~/.cache/starship
nu -c "starship init nu | save -f ~/.cache/starship/init.nu"

# rtx
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
