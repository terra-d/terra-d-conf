# installation
sudo pacman -S --needed fish
sudo pacman -S --needed starship
sudo pacman -S --needed which
sudo pacman -S --needed github-cli
sudo pacman -S --needed base-devel

curl https://rtx.pub/install.sh | sh

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S google-chrome

# fish
echo `(which chsh)` | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

mkdir -p $HOME/.config/fish
echo fish > $HOME/.config/fish/config.fish
echo "SETUVAR --export XDG_CONFIG_HOME:/home/terra/terra\\x2dd\\x2dconf" >> /home/terra/.config/fish_variables

fish -c "set -Ux STARSHIP_CONFIG $HOME/terra-d-conf/starship.toml"
fish -c "fish_add_path $HOME/.local/share/rtx/bin"

# finished
echo "Please restart shell."
