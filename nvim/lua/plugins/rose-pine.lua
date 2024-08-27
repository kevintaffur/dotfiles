return {
	"rose-pine/neovim",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "main",
			dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        bold = false,
        italic = false,
        transparency = false,
    },

		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
