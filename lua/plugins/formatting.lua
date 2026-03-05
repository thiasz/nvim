return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 8000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				json = { "prettier" },
				-- json = { "json_repair" },
				lua = { "stylua" },
				python = { "ruff" },
				xml = { "xmllint" },
				yaml = { "prettier" },
			},
		},
	},
	-- {
	-- 	"windwp/nvim-ts-autotag",
	-- 	config = function()
	-- 		require("nvim-ts-autotag").setup()
	-- 	end,
	-- },
}
