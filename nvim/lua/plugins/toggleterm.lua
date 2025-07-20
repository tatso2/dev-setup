return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "horizontal",
		open_mapping = [[<c-`>]],
		float_opts = {
			border = "single",
		},
	},
	config = function(_, opts)
		local keymap = vim.keymap -- for conciseness
		local trim_spaces = true
		local toggleterm = require("toggleterm")

		-- Keymaps
		-- To allow referencing code space on terminal
		keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit the insert mode in terminal" })
		keymap.set("v", "<space>s", function()
			toggleterm.send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
		end, { desc = "Send line to terminal" })

		toggleterm.setup(opts)
	end,
}
