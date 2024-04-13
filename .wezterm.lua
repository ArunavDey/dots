local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('JetBrains Mono')
config.font_size = 12
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

return config
