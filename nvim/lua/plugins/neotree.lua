return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		bind_to_cwd = false,
		window = {
			width = 35,
		},
		filesystem = {
			-- Automatically refreshes the directory changes
			use_libuv_file_watcher = true,
		},
		vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>"),
	},
}
