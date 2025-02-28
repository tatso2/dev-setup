return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- TODO: WIP
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
		},
	},
}
