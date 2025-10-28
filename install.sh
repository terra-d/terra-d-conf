#!/bin/bash

# installation
if [ "$(uname)" == 'Darwin' ]; then
  # install brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # install packages
  brew install bat
  brew install docker
  brew install fd
  brew install fish
  brew install fzf
  brew install gh
  brew install helix
  brew install nushell
  brew install ripgreg
  brew install starship
elif [ "$(cat /etc/os-release | grep '^ID=' | cut -d'=' -f2)" == 'arch' ]; then
  sudo -E pacman -Syu
  sudo -E pacman -S --needed --noconfirm base-devel
  sudo -E pacman -S --needed --noconfirm bat
  sudo -E pacman -S --needed --noconfirm docker
  sudo -E pacman -S --needed --noconfirm docker-compose
  sudo -E pacman -S --needed --noconfirm fd
  sudo -E pacman -S --needed --noconfirm fish
  sudo -E pacman -S --needed --noconfirm fzf
  sudo -E pacman -S --needed --noconfirm github-cli
  sudo -E pacman -S --needed --noconfirm lua51
  sudo -E pacman -S --needed --noconfirm luarocks
  sudo -E pacman -S --needed --noconfirm helix
  sudo -E pacman -S --needed --noconfirm nushell
  sudo -E pacman -S --needed --noconfirm ripgreg
  sudo -E pacman -S --needed --noconfirm starship
  sudo -E pacman -S --needed --noconfirm tk
  sudo -E pacman -S --needed --noconfirm wget
  sudo -E pacman -S --needed --noconfirm which
  sudo -E pacman -S --needed --noconfirm zip unzip

  curl https://mise.run | sh

  git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  yay -S google-chrome
elif [ "$(cat /etc/os-release | grep '^ID=' | cut -d'=' -f2)" == 'ubuntu' ]; then
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y build-essential
  sudo apt install -y bat
  sudo apt install -y fd-find
  sudo apt install -y fish
  sudo apt install -y fzf
  sudo apt install -y gh
  sudo apt install -y ripgrep
  sudo apt install -y starship
  sudo apt install -y zip unzip
  
  sudo apt-get install ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
  
  sudo systemctl start docker
  
  curl https://mise.run | sh
  curl -sS https://starship.rs/install.sh | sh
fi

export GH_BROWSER="'/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'"


# fish
echo `(which chsh)` | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

fish -c "set -Ux RIPGREP_CONFIG_PATH $HOME/.config/.ripgreprc"
fish -c "set -Ux PIPENV_VENV_IN_PROJECT 1"
fish -c "fish_add_path $HOME/.local/share/mise/bin"
fish -c "set -Ux GH_BROWSER '/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'"
if [ "$(uname)" == 'Darwin' ]; then
  fish -c "fish_add_path /Applications/WezTerm.app/Contents/MacOS"
fi

# nushell
mkdir -p ~/.cache/starship
nu -c "starship init nu | save -f ~/.cache/starship/init.nu"

# mise
fish -c "mise install"

echo "Please restart shell."
