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
	leader = { key=",", mods = "CTRL", timeout_milliseconds = 3000 },
	keys = {
		{
			key = "s",
			mods = "LEADER",
			action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
		},
		{
			key = "v",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
		}
	},
}

return config
