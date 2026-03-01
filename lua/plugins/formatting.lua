vim.pack.add({
    { src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
    formatters_by_ft = {
        json = { "json_repair" },
        lua = { "stylua" },
        python = { "ruff" },
        xml = { "xmllint" },
        yaml = { "prettier" },
    },
})

-- allows eslint + prettier to work in tandem
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})

-- return {
-- 	{
-- 		"stevearc/conform.nvim",
-- 		opts = {
-- 			format_on_save = {
-- 				timeout_ms = 8000,
-- 				lsp_format = "fallback",
-- 			},
-- 			formatters_by_ft = {
-- 				json = { "json_repair" },
-- 				lua = { "stylua" },
-- 				graphql = { "prettierd" },
-- 				python = { "ruff" },
-- 				-- xml = { "xmlformatter" },
-- 				xml = { "xmllint" },
-- 				yaml = { "prettier" },
-- 			},
-- 		},
-- 	},
-- 	{
-- 		"windwp/nvim-ts-autotag",
-- 		config = function()
-- 			require("nvim-ts-autotag").setup()
-- 		end,
-- 	},
-- }
