local wezterm = require("wezterm")

local wsl_domains = wezterm.default_wsl_domains()
for _, dom in ipairs(wsl_domains) do
    dom.default_cwd = "~"
end

local config = {
	color_scheme = "nordfox",
	font = wezterm.font("RictyDiminishedDiscord NF"),
	default_domain = "WSL:Arch",
	default_prog = { "wsl.exe" },
	keys = {
		{
			key = "s",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
		}
	},
}

return config
