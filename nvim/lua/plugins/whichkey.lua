return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- configurations
		win = {
			border = "single",
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
