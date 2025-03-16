-- Experimental
return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local bg = "#16161a"
		local bg_sidebar = "#14141a"
		local bg_dark = "#1f2335"
		local bg_dark1 = "#1b1e2d"
		local bg_highlight = "#292e42" -- line highlight
		local blue = "#7aa2f7"
		local blue0 = "#3d59a1"
		local blue1 = "#2ac3de"
		local blue2 = "#0db9d7"
		local blue5 = "#89ddff"
		local blue6 = "#b4f9f8"
		local blue7 = "#394b70"
		local comment = "#565f89"
		local cyan = "#7dcfff"
		local dark3 = "#545c7e"
		local dark5 = "#737aa2"
		local fg = "#c0caf5"
		local fg_dark = "#a9b1d6"
		local fg_gutter = "#3b4261"
		local green = "#9ece6a"
		local green1 = "#73daca"
		local green2 = "#41a6b5"
		local magenta = "#bb9af7"
		local magenta2 = "#ff007c"
		local orange = "#ff9e64"
		local purple = "#9d7cd8"
		local red = "#f7768e"
		local red1 = "#db4b4b"
		local teal = "#1abc9c"
		local terminal_black = "#414868"
		local yellow = "#e0af68"
		local git = {
			add = "#449dab",
			change = "#6183bb",
			delete = "#914c54",
		}
		require("tokyonight").setup({
			style = "night",
			transparent = true,
			styles = {
				sidebars = "normal",
				floats = "normal",
			},
			on_colors = function(colors)
				colors.bg = bg -- ok
				colors.bg_highlight = bg_highlight -- ok
				colors.fg = "#ededef"
			end,
			on_highlights = function(hl) end,
		})
		vim.cmd([[colorscheme tokyonight]])
	end,
}
