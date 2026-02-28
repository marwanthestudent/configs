local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = 'One Dark (Gogh)'
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
  left = 1,
  right = 1,
  top = 1,
  bottom = 1,
}

config.window_background_opacity = 0.60
config.macos_window_background_blur = 60

--tab bar
config.use_fancy_tab_bar = false

config.colors = {
    tab_bar = {
        active_tab = {
            bg_color = "#272727",
            fg_color = "#c0c0c0",
        },
    },
    foreground = '#E7DECC',
}

config.keys = {
  -- This will create a new split
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Up',
      size = { Percent = 50 },
    },
  },
  {
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },

  {key = '9', mods = 'CTRL', action = wezterm.action.PaneSelect },
}




return config
