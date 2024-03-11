-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Snazzy'
config.font = wezterm.font 'Moralerspace Neon NF'
config.harfbuzz_features = { 'calt=1', 'dlig=1', 'liga=1' }
config.window_background_image = '~/.config/neko52.png'
config.window_background_opacity = 0.8
config.send_composed_key_when_left_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
