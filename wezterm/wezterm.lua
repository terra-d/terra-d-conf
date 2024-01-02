local wezterm = require("wezterm")

local is_darwin = wezterm.target_triple:find("darwin")
local is_windows = wezterm.target_triple:find("windows")

local config = {
  color_scheme = "Tokyo Night",
  font = wezterm.font("Cica", { weight = "Regular" }),
  font_size = 14.0,
  leader = { key = ",", mods = "CTRL", timeout_milliseconds = 3000 },
  keys = {
    {
      key = "s",
      mods = "LEADER",
      action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "v",
      mods = "LEADER",
      action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
  },
}

if is_windows then
  config.default_domain = "WSL:Arch"
  config.default_prog = { "wsl.exe" }

  local wsl_domains = wezterm.default_wsl_domains()
  for _, dom in ipairs(wsl_domains) do
    dom.default_cwd = "~"
  end
end

return config
