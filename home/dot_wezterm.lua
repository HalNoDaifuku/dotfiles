-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = 'Snazzy'
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.window_background_image = '~/.config/neko52.png'
config.window_background_opacity = 0.8

-- and finally, return the configuration to wezterm
return config