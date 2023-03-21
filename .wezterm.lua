local wezterm = require("wezterm")

local config = {
	color_scheme = "nordfox",
	font = wezterm.font("RictyDiminishedDiscord NF"),
	default_prog = { "wsl.exe", "--cd", "~" },
}

return config
