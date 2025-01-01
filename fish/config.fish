if test (uname -s) = "Darwin"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  ~/.local/bin/mise activate fish | source
end

starship init fish | source

alias hx='helix'
