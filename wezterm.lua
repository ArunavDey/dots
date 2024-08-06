local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Kanagawa (Gogh)"
config.font = wezterm.font({
  family = "JetBrains Mono",
  harfbuzz_features = { "calt=0", "clig=0", "liga=1" }
})
config.font_size = 12
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.window_background_opacity = 0.92
config.initial_cols = 80
config.initial_rows = 24

return config
