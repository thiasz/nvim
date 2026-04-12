vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
})

require("conform").setup({
	format_on_save = {
		timeout_ms = 8000,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		json = { "prettier" },
		lua = { "stylua" },
		python = { "ruff" },
		xml = { "xmllint" },
		yaml = { "prettier" },
	},
})

require("nvim-ts-autotag").setup()
