return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"jinja",
			"json",
			"lua",
			"python",
			"query",
			"regex",
			"robot",
			"toml",
			"vim",
			"vimdoc",
			"xml",
			"yaml",
			"yang",
		},
	},
	config = function(_, opts)
		-- install parsers from custom opts.ensure_installed
		if opts.ensure_installed and #opts.ensure_installed > 0 then
			require("nvim-treesitter").install(opts.ensure_installed)
			-- register and start parsers for filetypes
			for _, parser in ipairs(opts.ensure_installed) do
				local filetypes = parser -- In this case, parser is the filetype/language name
				vim.treesitter.language.register(parser, filetypes)

				vim.api.nvim_create_autocmd({ "FileType" }, {
					pattern = filetypes,
					callback = function(event)
						vim.treesitter.start(event.buf, parser)
					end,
				})
			end
		end
	end,
}
