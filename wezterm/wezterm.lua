-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- Font
config.font = wezterm.font({
	family = "JetBrains Mono",
	weight = "DemiBold",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_size = 16

-- UI bit
config.enable_tab_bar = true
config.window_background_opacity = 0.9
config.window_padding = {
	left = 3,
	right = 3,
	top = 0,
	bottom = 0,
}
config.macos_window_background_blur = 30
config.text_background_opacity = 1
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}
local window_frame_color = "#222223"
config.window_frame = {
	font_size = 15,
	active_titlebar_bg = window_frame_color,
}

-- MACOS_FORCE_ENABLE_SHADOW is only for Mac
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.color_scheme = "Tokyo Night"

-- config.window_background_gradient = {
-- 	orientation = "Vertical",
-- 	-- orientation = {
-- 	-- 	Radial = {
-- 	-- 		cx = 0.2,
-- 	-- 		cy = 0.9,
-- 	-- 		radius = 1.4,
-- 	-- 	},
-- 	-- },
-- 	colors = {
-- 		"#000000",
-- 		"#070A0D",
-- 		-- "#0f151b",
-- 		-- "#161F28",
-- 		"#1D2935",
-- 		-- "#253443",
-- 		-- "#2C3E50",
-- 	},
-- 	interpolation = "Basis",
-- 	blend = "LinearRgb",
-- }

-- System settings
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"
-- Keymap configurations

-- Show time
wezterm.on("update-right-status", function(window, _)
	local cells = {}
	-- Extra white spaces are intentionally added to give extra paddings
	local date = wezterm.strftime(" %a %-d %b %H:%M    ")
	table.insert(cells, date)

	local time_icon = wezterm.nerdfonts.dev_terminal

	window:set_right_status(wezterm.format({
		{ Foreground = { Color = "#ffffff" } },
		{ Background = { Color = window_frame_color } },
		{ Text = time_icon },
		{ Text = " " },
		{ Attribute = { Underline = "Single" } },
		{ Attribute = { Italic = true } },
		{ Text = date },
	}))
end)

-- and finally, return the configuration to wezterm
return config
