-- Disable Space bar since it will be used as the leader key
vim.keymap.set({ "n", "v" }, "<leader>", "<nop>")

-- Redo remap
vim.keymap.set("n", "U", "<C-r>")

-- after a search, press escape to clear highlights
vim.keymap.set("n", "<Esc>", ":nohl<CR>")

-- Swap between split buffers
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>")

-- Save and quit current file quicker
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = false, noremap = true })
-- vim.keymap.set({ "n", "t" }, "<leader>q", ":q<cr>", { silent = false, noremap = true })

-- Little one from Primeagen to mass replace string in a file
vim.keymap.set("n", "<leader>sx", [[:%s/<C-r><C-w>/<C-r><C-w>/gcI<Left><Left><Left>]], { silent = false })
vim.keymap.set("n", "<leader>sz", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false })
-- vim.keymap.set("n", "<leader>sz", ':%norm f,d$T:d0f_y0Pa <cr>:%norm$a touch<cr>ggVG"+y', { silent = false })

-- Navigate through buffers
vim.keymap.set("n", "<S-Right>", ":bnext<CR>", { silent = false })
vim.keymap.set("n", "<S-Left>", ":bprevious<CR>", { silent = false })

-- Close currently active buffer
vim.keymap.set("n", "<C-c>", ":bwipeout<CR>", { silent = false })
vim.keymap.set("n", "<C-x>", ":bwi!<CR>", { silent = false })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Center buffer when navigating up and down
-- vim.keymap.set("n", "<S-Up>", "<C-u>zz")
-- vim.keymap.set("n", "<S-Down>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Center buffer when progressing through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without replacing paste with what you are highlighted over
vim.keymap.set("n", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>p", '"+p')

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>a", 'ggVG"+y', { silent = false })

-- Open buffer to the right
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>h", ":split<CR>")
-- Maximize Split Window
-- vim.keymap.set("n", "<C-z>", "<C-w>_")

-- Move selection up and down
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

-- toggle inlayhints
vim.keymap.set("n", "<leader>H", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
	vim.notify(vim.lsp.inlay_hint.is_enabled() and "Inlay Hints Enabled" or "Inlay Hints Disabled")
end)

-- navigate Quick Fix List
vim.keymap.set("n", "<leader>q", ":copen<CR>", { desc = "open Quick Fix List" })
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "close Quick Fix List" })
-- vim.keymap.set("n", "<leader>n", ":cnext<CR>", { desc = "next Entry in Quick Fix List" })
-- vim.keymap.set("n", "<leader>b", ":cprevious<CR>", { desc = "previous Entry in Quick Fix List" })
vim.keymap.set("n", "<C-n>", ":cnext<CR>", { desc = "next Entry in Quick Fix List" })
vim.keymap.set("n", "<C-p>", ":cprevious<CR>", { desc = "previous Entry in Quick Fix List" })

-- comment string
vim.keymap.set("n", "§", ":norm gcc<CR>j", { desc = "comment string" })
