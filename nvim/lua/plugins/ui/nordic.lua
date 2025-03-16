return {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local nordic = require("nordic")
		nordic.load({
			transparent = {
				bg = true,
				float = false,
			},
			bright_border = true,
		})
	end,
}
