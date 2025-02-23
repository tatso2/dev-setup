return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = [[<c-`>]],
    highlights = {
      NormalFloat = {
        guibg = "#00FF00"
      }
    }
  },
  config = function(_, opts)
    local toggleterm = require("toggleterm")
    toggleterm.setup(opts)
  end
}
