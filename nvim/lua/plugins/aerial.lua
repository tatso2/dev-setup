return {
	"stevearc/aerial.nvim",
	config = function()
		local aerial = require("aerial")
		aerial.setup({})
	end,
	vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial" }),
}
