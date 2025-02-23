-- Experimental
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local bg = "#262626"
    local bg_highlight = "#393939"
    local bg_sidebar = "#212121"
    local bg_statusline = "#191919"
    local fg = "#F2F2F1"
    local fg_dark = "#F3CB4C" -- function bracket ()
    local fg_gutter = "#454545"  -- vertical lines
    local fg_sidebar = "#F2f2f2"

    -- Line colors, etc.
    local LineNrUnselected = "#767676"
    local comment = "#949493"

    require("tokyonight").setup({
      style = "storm",
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_highlight = bg_highlight
        colors.bg_sidebar = bg_sidebar
        colors.bg_statusline = bg_statusline
        colors.fg = fg -- font color
        colors.fg_dark = fg_dark
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_sidebar
      end,
      on_highlights = function(hl)
        hl.LineNrAbove = { fg = LineNrUnselected }
        hl.LineNrBelow = { fg = LineNrUnselected }
        hl.Comment = { fg = comment }
      end,
    })
    vim.cmd[[colorscheme tokyonight]]
  end,
}
