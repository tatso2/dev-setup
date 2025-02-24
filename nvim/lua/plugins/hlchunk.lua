return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				-- Change the chunk style
				chars = {
					horizontal_line = "─",
					vertical_line = "│",
					left_top = "┌",
					left_bottom = "└",
					right_arrow = "─",
				},
				enable = true,
				style = {
					{ fg = "#888888" },
				},
				-- Disable animation
				duration = 0,
				delay = 0,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
