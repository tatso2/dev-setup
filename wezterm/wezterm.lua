-- Pull in the wezterm API
local wezterm = require("wezterm")
-- Color palette
local C = require("colors.citylife").colors

-- This will hold the configuration
local config = wezterm.config_builder()

-- System settings
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"
config.audible_bell = "Disabled"

-- Font settings
config.font_size = 16
config.font = wezterm.font({
	family = "Monaspace Neon",
	weight = "Medium",
	stretch = "Normal",
	-- Ligatures & character variants
	harfbuzz_features = {
		"calt=1", -- texture healing
		"liga=1", -- customised spacing of repeated chars /// __
		"cv31=1", -- 6-pointed asterisk *
		"ss01=0", -- ===
		"ss02=0",
		"ss03=0",
		"ss04=0", -- </ />
		"ss05=0",
		"ss06=0", -- ### __
		"ss07=0", -- -:- =:= :::
		"ss08=0", -- ..=
		"ss09=0", -- =>
	},
})

-- UI
-- Colour scheme
config.color_scheme = "Catppuccin Macchiato (Gogh)"
config.colors = {
	foreground = C.text,
	background = C.bg,
	cursor_fg = C.bg,
	cursor_bg = C.sub_lavender,
}

-- Window UI
-- MACOS_FORCE_ENABLE_SHADOW is only for Mac
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Windowframe UI
local window_frame_color = "#aaadba"
config.window_frame = {
	font = require("wezterm").font({ family = "Monaspace Neon", weight = "Bold" }),
	font_size = 15,
	border_left_width = "0cell",
	border_right_width = "0cell",
	border_bottom_height = "0cell",
	border_top_height = "0cell",
	active_titlebar_bg = window_frame_color,
	inactive_titlebar_bg = window_frame_color,
}

config.macos_window_background_blur = 30
config.text_background_opacity = 1
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- Tab UI
config.enable_tab_bar = true
function tab_title(tab_info)
	local title = tab_info.tab_title
	if title and #title > 0 then
		return title
	end

	-- Get process info
	-- Refresh tab title name after closing yazi
	local process_name = tab_info.active_pane.foreground_process_name
	if process_name then
		process_name = string.gsub(process_name, "^.*/([^/]+)$", "%1")
		return process_name
	end
	return tab_info.active_pane.title
end

-- Obtain tab information and customise its icon and title on the tab
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	-- Non-focused tab color
	local background = C.bg_cursor_dark
	local foreground = C.text
	local icon_foreground = C.text

	if tab.is_active then
		background = C.bg
		foreground = C.sub_lavender
	end

	local title = tab_title(tab)
	-- Icon depending on the tab title
	local ICON = wezterm.nerdfonts.fa_terminal
	if title == "nvim" then
		ICON = wezterm.nerdfonts.custom_vim
		icon_foreground = C.green
	elseif title == "Python" then
		ICON = wezterm.nerdfonts.dev_python
		icon_foreground = C.orange
	elseif title == "lua" then
		ICON = wezterm.nerdfonts.md_language_lua
		icon_foreground = C.sky
	elseif title == "docker" then
		ICON = wezterm.nerdfonts.fa_docker
		icon_foreground = C.lavender
	end

	-- tab_index is incremented by 1 so that it starts with 1
	-- matching ActiveTab numbers to keyboard numbers
	-- ActiveTab=8 is disabled as a side effect
	return {
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = " " .. tab.tab_index + 1 .. "." },
		{ Foreground = { Color = icon_foreground } },
		{ Text = " " .. ICON .. " " },
		{ Foreground = { Color = foreground } },
		{ Text = title .. " " },
	}
end)

-- and finally, return the configuration to wezterm
return config
