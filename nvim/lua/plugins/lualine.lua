return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      sections = {
        lualine_b = {
          { "filename", file_status = false, path = 4 },
        },
        lualine_c = {},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e68" }
          },
          { "fileformat" },
          { "filetype" },
        },
        lualine_y = {},
        lualine_z = {},
      }
    })
  end,
}
