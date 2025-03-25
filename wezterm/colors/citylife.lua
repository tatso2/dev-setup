local M = {}

M.colors = {
	--- Editor UI
	bg = "#22242A", -- base color, editor background
	bg_float = "#34363D", -- Float window
	bg_status = "#2E3036", -- editor status line
	bg_sidebar = "#282A30", -- editor sidebar
	bg_separator = "#51545C", -- window separator
	bg_border = "#757881", -- float border
	bg_word_hl = "#5D6068",
	bg_cursor = "#34363F",
	bg_cursor_dark = "#45484F", -- cursor for pmenu

	text = "#cdd1df", -- main text
	text_sub = "#c7cbd9", --
	comment = "#9EA1AD", -- comment
	text_dim = "#696C75", -- lineNr, hidden files, etc.

	-- Accent colours for mainly syntax
	red = "#E3A8A9",
	orange = "#E3C2A8", -- numbers
	green = "#BFE3A8", -- strings
	sakura = "#E3A8D4", -- keywords
	yellow = "#E2E3A8",
	sky = "#A8D9E3",
	lavender = "#A8B8E3",
	cloud = "#A8C1E3",

	-- Sub accent colours
	sub_sakura = "#DABEE5",
	sub_lavender = "#BEC4E5",
	sub_sky = "#BEDFE5",
	sub_green = "#CDE5BE",
	sub_orange = "#E5D3BE",

	-- Git related
	git_red = "#E59991",
	git_yellow = "#E5E28A",
	git_green = "#75E5AA",
	git_blue = "#9AAAE5",

	none = "NONE",
}

return M
