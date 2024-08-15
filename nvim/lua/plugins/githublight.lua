return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  version = false,
  priority = 1000,
  config = function ()
    vim.cmd.colorscheme "github_light_default"
    vim.cmd "hi CursorLineNr gui=bold guifg=#000000 guibg=#e7eaf0"
  end
}
