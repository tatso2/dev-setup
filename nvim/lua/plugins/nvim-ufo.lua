return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		{ "kevinhwang91/promise-async" },
	},
	config = function()
		local ufo = require("ufo")
		-- Fold at the first column
		vim.o.foldcolumn = "auto:9"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
		vim.o.fillchars = [[eob: ,fold: ,foldopen:▾,foldsep: ,foldclose:▸]]

		vim.keymap.set("n", "zR", ufo.openAllFolds)
		vim.keymap.set("n", "zM", ufo.closeAllFolds)
		ufo.setup()
	end,
}
