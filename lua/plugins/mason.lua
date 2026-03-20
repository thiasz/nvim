return {
	{
		"mason-org/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua-language-server",
					"prettier",
					"pyright",
					"robotcode",
					"ruff",
					"stylua",
					-- "xmlformatter",
					"yaml-language-server",
				},
				auto_update = false,
				run_on_start = true,
			})
		end,
	},
}
