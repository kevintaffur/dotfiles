return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-null-ls").setup({
			ensure_installed = {
				"prettierd",
				"eslint_d",
				"stylua",
				"black",
				"isort",
				"djlint",
			},
			automatic_installation = false,
			handlers = {},
		})
	end,
}
