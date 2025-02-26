-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- Font
config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	weight = "Medium",
})
config.font_size = 16

-- UI bit
config.enable_tab_bar = true
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.text_background_opacity = 1
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}
config.window_frame = {
	font_size = 15,
	--   active_titlebar_bg = "#333344",
	--   inactive_titlebar_bg = "#333344"
}
config.background = {
	{
		source = {
			Gradient = {
				colors = { "#1e1e2e" },
			},
		},
		opacity = 0.95,
		width = "100%",
		height = "100%",
	},

	{
		source = {
			File = wezterm.home_dir .. "/.config/wezterm/from_me_to_you.jpg",
		},
		opacity = 0.05,
		width = "100%",
		height = "100%",
		hsb = {
			brightness = 3,
		},
	},
}
-- config.window_background_image_hsb = {
-- 	brightness = 0.3,
-- 	hue = 1.0,
-- 	saturation = 1.0,
-- }

config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"
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
		{ Background = { Color = "#333344" } },
		{ Text = time_icon },
		{ Text = " " },
		{ Attribute = { Underline = "Single" } },
		{ Attribute = { Italic = true } },
		{ Text = date },
	}))
end)

-- and finally, return the configuration to wezterm
return config
