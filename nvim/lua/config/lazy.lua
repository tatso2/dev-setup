-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import all plugins in lua/plugins/
		{ import = "plugins.ui.catppuccin" },
		{ import = "plugins.toggleterm" },
		{ import = "plugins.neotree" },
		{ import = "plugins.lualine" },
		{ import = "plugins.gitsigns" },
		{ import = "plugins.whichkey" },
		{ import = "plugins.highlightcolors" },
		{ import = "plugins.mason" },
		{ import = "plugins.treesitter" },
		{ import = "plugins.neoscroll" },
		{ import = "plugins.comment" },
		{ import = "plugins.nvim-lspconfig" },
		{ import = "plugins.nvim-cmp" },
		{ import = "plugins.nvim-autopairs" },
		{ import = "plugins.hlchunk" },
		{ import = "plugins.bufferline" },
		{ import = "plugins.nvim-colorizer" },
		{ import = "plugins.telescope" },
		{ import = "plugins.trouble" },
		{ import = "plugins.formatting" },
		{ import = "plugins.linting" },
		{ import = "plugins.todo-comments" },
		{ import = "plugins.substitute" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	-- install = { colorscheme = { "catppuccin", "habamax" } },
	-- automatically check for plugin updates
	-- but not to notify
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = { notify = false },
})
