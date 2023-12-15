local map = vim.keymap.set

-- S = Shift
-- C = CTRL
-- D = CMD
-- A = ALT
-- for more infos write :help key-notation

map({ "n", "v", "i" }, "<C-s>", function()
	vim.lsp.buf.format()
	vim.api.nvim_command('write')
end, { silent = true, desc = "Save" })

-- Open Commands
map({ "n", "v" }, "<leader>of", ":NERDTree %<CR>", { silent = true, desc = "Open file" })
map({ "n", "v" }, "<leader>ob", ":Merginal<CR>", { silent = true, desc = "Open branches" })
map({ "n", "v" }, "<leader>og", ":G ", { silent = true, desc = "Open Git" })
map({ "n", "v" }, "<leader>os", ":Telescope npm scripts<CR>",
	{ silent = true, desc = "Open npm scripts, with C-x in horizontal split" })
map({ "n", "v" }, "<leader>op", ":Telescope projects<CR>", { silent = true, desc = "Open projects" })
map({ "n", "v" }, "<leader>ot", ":terminal ", { silent = true, desc = "Open terminal" })
map({ "n", "v" }, "<leader>ou", ":UndotreeToggle<CR>", { silent = true, desc = "Open Undotree" })
map({ "n", "v" }, "<leader>od", ":lua require('dbee').open()<CR>", { silent = true, desc = "Open dbee" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move lin vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Keeps cursor centered
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- pasting without saving of selected text
vim.keymap.set("x", "<leader>p", [["_dP]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<A-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- replaces everywhere that is selected
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
