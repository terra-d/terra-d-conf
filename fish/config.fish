if test (uname -s) = "Darwin"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  mise activate fish | source
end

starship init fish | source
