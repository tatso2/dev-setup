return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")
		substitute.setup()

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>r", substitute.operator, { desc = "Substitute with motion" })
		keymap.set("n", "<leader>rr", substitute.line, { desc = "Substitute line" })
		keymap.set("n", "<leader>R", substitute.eol, { desc = "Substitute to end of line" })
		keymap.set("x", "<leader>r", substitute.visual, { desc = "Substitute in visual mode" })
	end,
}
