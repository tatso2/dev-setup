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
		indent = {
			indent = {
				enabled = true,
			},
			animate = {
				duration = {
					step = 0,
					total = 0,
				},
			},
			scope = {
				enabled = true,
				hl = "SnacksIndent1",
			},
		},
	},
}
