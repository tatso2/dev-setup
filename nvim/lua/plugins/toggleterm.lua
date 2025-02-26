return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = [[<c-`>]],
		float_opts = {
			border = "single",
		},
	},
	config = function(_, opts)
		local toggleterm = require("toggleterm")
		toggleterm.setup(opts)
	end,
}
