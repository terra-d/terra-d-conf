# installation
sudo pacman -S fish
sudo pacman -S starship
sudo pacman -S which

# fish
chsh -s /usr/bin/fish

# starship
curl -sS https://starship.rs/install.sh | sh

mkdir -p $HOME/.config/fish
echo "SETUVAR --export XDG_CONFIG_HOME:/home/terra/terra\\x2dd\\x2dconf" >> /home/terra/.config/fish_variables
echo "Please restart shell."
