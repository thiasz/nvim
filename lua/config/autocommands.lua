-- highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

-- Set indentation to 2 spaces
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "py", "robot", "resource" },
	command = "setlocal shiftwidth=4 tabstop=4",
})
