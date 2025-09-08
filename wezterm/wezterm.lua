local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- OneDark Warm palette from navarasu/onedark.nvim
local one_dark_warm = {
	foreground = "#abb2bf",
	background = "#2c2c2c", -- darker warm base background
	cursor_bg = "#e5c07b",
	cursor_fg = "#2c2c2c",
	cursor_border = "#e5c07b",
	selection_bg = "#3e4452",
	selection_fg = "#ffffff",

	ansi = {
		"#3f4451", -- black
		"#e06c75", -- red
		"#98c379", -- green
		"#d19a66", -- yellow (warmer)
		"#61afef", -- blue
		"#c678dd", -- magenta
		"#56b6c2", -- cyan
		"#abb2bf", -- white
	},
	brights = {
		"#5c6370", -- bright black
		"#e06c75", -- bright red
		"#98c379", -- bright green
		"#d19a66", -- bright yellow
		"#61afef", -- bright blue
		"#c678dd", -- bright magenta
		"#56b6c2", -- bright cyan
		"#ffffff", -- bright white
	},
}

config.automatically_reload_config = true
config.enable_tab_bar = true
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

-- Disable ligatures for JetBrains Mono
config.font = wezterm.font({
  family = "JetBrains Mono",
  weight = "Bold",
  harfbuzz_features = { "calt=0", "liga=0", "clig=0" }, -- disable ligatures
})

config.font_size = 16

config.window_padding = {
  left = 3,
  right = 3,
  top = 0,
  bottom = 0,
}

config.color_schemes = {
  ["OneDarkWarm"] = one_dark_warm,
}
config.color_scheme = "OneDarkWarm"

config.window_background_opacity = 0.90
config.macos_window_background_blur = 50

return config
