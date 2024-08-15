return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "hard",
      overrides = {
        SignColumn = {
          bg = "#1d2021"
        },
        DiagnosticSignError = {
          bg = "#1d2021",
          fg = "#cc241d"
        },
        DiagnosticSignWarn = {
          bg = "#1d2021",
          fg = "#d79921"
        },
        DiagnosticSignInfo = {
          bg = "#1d2021",
          fg = "#458588"
        },
        DiagnosticSignHint = {
          bg = "#1d2021",
          fg = "#689d6a"
        }
      }
    })
    vim.o.background = "dark"
    vim.cmd.colorscheme "gruvbox"
    vim.cmd "hi CursorLineNr gui=bold"
  end
}
