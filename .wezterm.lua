local wezterm = require("wezterm")

local config = {
	color_scheme = "nordfox",
	font = wezterm.font("RictyDiminishedDiscord NF"),
	default_domain = "WSL:Arch",
	default_prog = { "wsl.exe" },
}

return config
