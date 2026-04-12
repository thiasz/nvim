vim.pack.add({
	{ src = "https://github.com/rose-pine/neovim" },
	{ src = "https://github.com/vague2k/vague.nvim" },
})

-- require("rose-pine").setup({
-- 	opts = {
-- 		styles = {
-- 			bold = false,
-- 			italic = true,
-- 			transparency = true,
-- 		},
-- 	},
-- })

-- vim.cmd("colorscheme rose-pine")
vim.cmd("colorscheme vague")
-- vim.cmd(":hi statusline guibg=NONE")
