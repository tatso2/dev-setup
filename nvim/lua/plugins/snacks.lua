return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- TODO: WIP
		dashboard = {
			width = 60,
			sections = {
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
		terminal = { enabled = false },
		words = { enabled = false },
		bigfile = { enabled = false },
		explorer = { enabled = false },
		input = { enabled = false },
		notifier = { enabled = false },
		picker = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
	},
}
