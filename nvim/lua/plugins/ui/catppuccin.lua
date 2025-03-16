return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		local catppuccin = require("catppuccin")
		local macchiato = require("catppuccin.palettes").get_palette("macchiato")

		catppuccin.setup({
			flavour = "macchiato",
			transparent_background = false,
			show_end_of_buffer = false,
			term_colors = true,
			color_overrides = {
				mocha = {
					-- base = macchiato.mantle,
					base = "#22242A",
					mantle = "#2b2b2c", -- sidebar, lualine, whichkey bg
					crust = "#ffffff",
					text = "#ededff",
					overlay2 = "#87878f", -- comment
					surface2 = "#ff00ff",
					-- subtext1 = "#bac2de",
					-- subtext0 = "#a6adc8",
					-- overlay2 = "#9399b2",
					-- overlay1 = "#7f849c",
					-- overlay0 = "#6c7086",
					-- surface2 = "#585b70",
					-- surface1 = "#45475a",
					-- surface0 = "#313244",
				},
			},
			highlight_overrides = {
				-- TODO: cursor color is overridden in iTerm2 or wezTerm
				-- depending on the colour scheme you have
				macchiato = function()
					return {
						LineNr = { fg = "#737994" },
					}
				end,
				mocha = function()
					return {
						LineNr = { fg = "#737994" },
					}
				end,
			},
			integrations = {
				aerial = true,
				cmp = true,
				fzf = true,
				gitsigns = true,
				illuminate = true,
				mason = true,
				lsp_trouble = true,
				neotree = true,
				snacks = true,
				treesitter = true,
				telescope = true,
				which_key = true,
			},
		})
		vim.cmd([[colorscheme catppuccin]])
	end,
}
