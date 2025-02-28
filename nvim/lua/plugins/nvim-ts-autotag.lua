return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	lazy = false,
	config = function()
		local ts_autotag = require("nvim-ts-autotag")
		ts_autotag.setup()
	end,
}
