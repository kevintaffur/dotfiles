return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require("neo-tree")
    vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal right<CR>")

    neotree.setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
          never_show = {
            ".git",
            ".github"
          }
        }
      },
      close_if_last_window = true,
      window = {
        position = "right",
      }
    })
  end
}
