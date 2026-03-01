vim.pack.add({
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup({})
require("mason-tool-installer").setup({
	ensure_installed = {
		"json-repair",
		"robotcode",
		-- "robotframework-lsp",
		"ruff",
		"stylua",
		"yaml-language-server",
	},
	auto_update = false,
	run_on_start = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

		-- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

vim.cmd("set completeopt+=noselect")
