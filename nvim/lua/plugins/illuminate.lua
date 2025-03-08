return {
	"RRethy/vim-illuminate",
	opts = {
		providers = {
			"regex",
		},
	},
	config = function(_, opts)
		require("illuminate").configure(opts)
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				local buffer = vim.api.nvim_get_current_buf()
				vim.keymap.set("n", "]]", function()
					require("illuminate")["goto_next_reference"](false)
				end, {
					desc = "Next Reference",
					buffer = buffer,
				})
				vim.keymap.set("n", "[[", function()
					require("illuminate")["goto_prev_reference"](false)
				end, {
					desc = "Previous Reference",
					buffer = buffer,
				})
			end,
		})
	end,
}
