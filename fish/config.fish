if test (uname -s) = "Darwin"
  eval "$(/opt/homebrew/bin/brew shellenv)"
end

starship init fish | source
rtx activate fish | source

alias hx='helix'
