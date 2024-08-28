return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" },
			patterns = { "manage.py", ".git" },
			show_hidden = true,
		})

		-- event = { "BufReadPre", "BufNewFile" },
		-- Set filetype to htmldjango for HTML files in Django projects
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.html",
			callback = function()
				-- Check if we're in a Django project (based on the presence of manage.py)
				if vim.fn.filereadable(vim.fn.getcwd() .. "/manage.py") == 1 then
					vim.bo.filetype = "htmldjango"
				end
			end,
		})
	end,
}
