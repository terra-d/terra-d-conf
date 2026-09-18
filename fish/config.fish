if test (uname -s) = Darwin
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    ~/.local/bin/mise activate fish | source
end

starship init fish | source

function hx
    if test -n "$WSL_DISTRO_NAME"
        env -u WEZTERM_UNIX_SOCKET hx $argv
    else
        command hx $argv
    end
end
