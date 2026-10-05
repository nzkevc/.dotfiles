local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action


config.enable_tab_bar = false
config.font = wezterm.font("Cascadia Code NF")
config.font_size = 14.0
config.keys = {
  {

    key = 'Backspace', 
    mods = 'CTRL', 
    action = act.SendKey { key = 'w', mods = 'CTRL' }
  },
}
config.tab_and_split_indices_are_zero_based = true
config.window_background_opacity = 0.8


return config
