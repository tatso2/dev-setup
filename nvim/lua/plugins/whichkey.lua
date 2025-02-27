return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- configurations
		win = {
			border = "single",
			height = { max = 15 },
			padding = { 1, 1 },
		},
		layout = {
			spacing = 2,
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
