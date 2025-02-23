return {
  "folke/trouble.nvim",
  opts = {
    focus = true,
    modes = {
      symbols = {
        win = {
          position = "right",
       }
      }
    }
  },
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics Toggle (Trouble)",
    },
  }
}

