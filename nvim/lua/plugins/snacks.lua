return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
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
		},
	},
}
