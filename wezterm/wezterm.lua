-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background ="#22272e" 

-- This is where you actually apply your config choices.
config = {
	automatically_reload_config = true,
	enable_tab_bar = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 16,
	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
      color_schemes = {
         ["Github_dimmed"] = custom,
      },
      color_scheme = "Github_dimmed", 
   
}

-- Finally, return the configuration to wezterm:
return config
