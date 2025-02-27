return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- TODO: WIP
		dashboard = {
			enabled = true,
			width = 60,
			row = nil,
			col = nil,
		},
		indent = {
			enabled = true,
			-- Disable animation
			animate = {
				duration = {
					step = 0,
					total = 0,
				},
			},
		},
	},
}
