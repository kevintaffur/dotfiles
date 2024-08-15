return {
  "echasnovski/mini.files",
  version = false,
  dependencies = {
    "echasnovski/mini.icons",
    version = false,
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":lua MiniFiles.open()<CR>")
    require("mini.icons").setup()
    require("mini.files").setup()
  end
}
