return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		local catppuccin = require("catppuccin")
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		local macchiato = require("catppuccin.palettes").get_palette("macchiato")

		catppuccin.setup({
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
			color_overrides = {
				mocha = {
					base = macchiato.mantle,
					surface0 = "#444762",
					text = "#cdddff",
				},
			},
			highlight_overrides = {
				-- TODO: cursor color is overridden in iTerm2 or wezTerm
				-- depending on the colour scheme you have
				mocha = function()
					return {
						LineNr = { fg = "#737994" },
					}
				end,
			},
		})
		vim.cmd([[colorscheme catppuccin]])
	end,
}
