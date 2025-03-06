return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "bil"
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "Blue", { fg = "#444762" })
		end)
		require("ibl").setup({
			indent = {
				char = "▏",
				highlight = { "Blue" },
			},
			scope = {
				show_start = false,
				show_end = false,
			},
		})

		-- To disable the first column indentation guide
		-- hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
		-- hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
	end,
}
