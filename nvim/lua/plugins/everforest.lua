return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      background = "hard",
      transparent_background_level = 1,
      italics = false,
      disable_italic_comments = true,
      ui_contrast = "high",
      float_style = "dim",
      inline_hints_background = "none",
    })
    vim.o.background = "dark"
    vim.cmd.colorscheme "everforest"
    vim.cmd "hi CursorLineNr gui=bold"
  end
}
