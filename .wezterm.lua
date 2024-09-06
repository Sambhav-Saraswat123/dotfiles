local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Agave Nerd Font")
config.font_size = 21

config.enable_tab_bar = false
config.window_decorations = "TITLE|RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

return config
