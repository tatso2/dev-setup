-- Experimental
return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local bg = "#2d2a2e"
		local bg_dark = "#19181a"
		local bg_dark1 = "#221f22"
		local bg_highlight = "#2f334d"
		local blue = "#82aaff"
		local blue0 = "#3e68d7"
		local blue1 = "#65bcff"
		local blue2 = "#0db9d7"
		local blue5 = "#89ddff"
		local blue6 = "#b4f9f8"
		local blue7 = "#394b70"
		local comment = "#636da6"
		local cyan = "#86e1fc"
		local dark3 = "#545c7e"
		local dark5 = "#737aa2"
		local fg = "#fcfcfa"
		local fg_dark = "#828bb8"
		local fg_gutter = "#3b4261"
		local green = "#c3e88d"
		local green1 = "#4fd6be"
		local green2 = "#41a6b5"
		local magenta = "#c099ff"
		local magenta2 = "#ff007c"
		local orange = "#ff966c"
		local purple = "#fca7ea"
		local red = "#ff757f"
		local red1 = "#c53b53"
		local teal = "#4fd6be"
		local terminal_black = "#444a73"
		local yellow = "#ffc777"
		local git = {
			add = "#b8db87",
			change = "#7ca1f2",
			delete = "#e26a75",
		}

		-- Line colors, etc.
		local LineNrUnselected = "#767676"
		local comment = "#949493"

		require("tokyonight").setup({
			style = "storm",
			transparent = false,
			styles = {
				-- sidebars = "transparent",
				floats = "transparent",
			},
			on_colors = function(colors)
				colors.bg = bg
				colors.fg = fg
				colors.bg_dark = bg_dark
				colors.bg_dark1 = bg_dark1
				-- 	colors.bg_highlight = bg_highlight
				-- 	colors.bg_statusline = bg_statusline
				-- 	colors.fg = fg -- font color
				-- 	colors.fg_dark = fg_dark
				-- 	colors.fg_gutter = fg_gutter
				-- 	colors.fg_sidebar = fg_sidebar
			end,
			on_highlights = function(hl)
				hl.LineNrAbove = { fg = LineNrUnselected }
				hl.LineNrBelow = { fg = LineNrUnselected }
				hl.Comment = { fg = comment }
			end,
		})
		vim.cmd([[colorscheme tokyonight]])
	end,
}
