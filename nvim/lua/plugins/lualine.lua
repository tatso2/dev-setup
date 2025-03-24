return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local citylife = require("citylife")

		lualine.setup({
			options = {
				theme = citylife.lualine,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{ "filename", file_status = false, path = 4 },
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e68" },
					},
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_y = { "location" },
				lualine_z = {},
			},
			extensions = {
				"aerial",
				"lazy",
				"mason",
				"neo-tree",
				"trouble",
				"toggleterm",
			},
		})
	end,
}
