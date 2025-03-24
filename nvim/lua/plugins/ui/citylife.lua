return {
	dir = "~/dev/nvim_plugins/colour_scheme/citylife",
	-- "tatso2/citylife",
	lazy = false,
	priority = 1000,
	config = function()
		require("citylife").setup()
		vim.cmd("colorscheme citylife")
	end,
}
