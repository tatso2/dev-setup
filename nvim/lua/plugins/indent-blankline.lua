return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "bil"
	---@type ibl.config
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")
		require("ibl").setup({
			indent = {
				char = "▏",
			},
			scope = {
				show_start = false,
				show_end = false,
			},
		})
		hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
		hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
	end,
}
