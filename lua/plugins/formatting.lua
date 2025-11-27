return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 8000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				graphql = { "prettierd" },
				python = { "ruff" },
				-- xml = { "xmlformatter" },
				yaml = { "prettier" },
			},
		},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
