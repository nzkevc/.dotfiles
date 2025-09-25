local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux

config.enable_tab_bar = false
config.font = wezterm.font "Cascadia Code NF"
config.font_size = 14.0
config.tab_and_split_indices_are_zero_based = true
config.window_background_opacity = 0.8

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
