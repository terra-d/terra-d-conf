if test (uname -s) = "Darwin"
  eval "$(/opt/homebrew/bin/brew shellenv)"
end

starship init fish | source
~/.local/bin/mise activate fish | source

alias hx='helix'
