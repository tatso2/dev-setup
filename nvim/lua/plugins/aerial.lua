return {
	"stevearc/aerial.nvim",
	config = function()
		local aerial = require("aerial")
		aerial.setup({
			on_attach = function(bufnr) end,
		})
	end,
	vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial" }),
}
