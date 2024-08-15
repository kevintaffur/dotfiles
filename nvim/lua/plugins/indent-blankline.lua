return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      -- underline the start of the scope, nope
      show_start = false,
    },
    exclude = {
      filetypes = {
        -- "lua",
      },
    },
  },
}
