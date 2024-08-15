return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
	config = function()
		local null_ls = require("null-ls")

		-- local null_ls_utils = require("null-ls.utils")
		-- local cmd_resolver = require("null-ls.helpers.command_resolver")

		local formatting = null_ls.builtins.formatting
		-- local diagnostics = null_ls.builtins.diagnostics

		null_ls.setup({
			-- root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
			-- dynamic_command = cmd_resolver.from_node_modules(),
			sources = {
				-- Lua
				formatting.stylua,
				-- Js
				-- diagnostics.eslint_d,
        require("none-ls.diagnostics.eslint_d"),
				formatting.prettierd,
				-- formatting.prettier,
				-- Python
				formatting.black,
				formatting.isort,
				-- Golang
				formatting.goimports,
			},
		})

		vim.keymap.set("n", "<leader>fr", vim.lsp.buf.format, {})
	end,
}
