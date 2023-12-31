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

# fish
echo `(which fish)` | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

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
