-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
-- Window
-- split window
config.keys = {
	-- This will create a new split and run your default program inside it
	{ key = "d", mods = "CMD", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	-- Pane Select
	-- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
	{ key = "9", mods = "CMD", action = wezterm.action.PaneSelect },
	-- activate pane selection mode with numeric labels
	{ key = "0", mods = "CMD", action = wezterm.action.PaneSelect({ alphabet = "1234567890" }) },
	-- toggle full screen
	{ key = "f", mods = "CMD|CTRL", action = wezterm.action.ToggleFullScreen },
}

-- Tabbar
config.window_frame = {
	font = wezterm.font({ family = "JetBrains Mono", weight = "Bold", italic = true }),
	font_size = 12.0,
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#222222",
}

config.inactive_pane_hsb = {
	saturation = 0.5,
	brightness = 0.5,
}

-- window background
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

-- Colors & Apperance
config.colors = {
	-- tabbar color
	tab_bar = {
		background = "#1D1F21",
		-- active tab
		active_tab = {
			bg_color = "#2c2e30",
			fg_color = "#FF6600",
			italic = true,
			strikethrough = true,
		},
		-- inactve tab
		inactive_tab = {
			fg_color = "#929292",
			bg_color = "#1D1F21",
		},
		inactive_tab_hover = {
			fg_color = "#FF6600",
			bg_color = "#2C2E30",
		},
	},
}
config.color_scheme = "Dark"

-- Fonts
config.font = wezterm.font("Input Mono")
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 14

return config
