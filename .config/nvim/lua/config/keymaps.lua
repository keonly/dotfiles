local keymap = vim.keymap

-- Open
keymap.set("n", "<leader>op", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Focus
keymap.set("n", "<C-h>", "<C-w>h", opts) -- left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- right

-- Windows
keymap.set("n", "<leader>wv", ":vsplit<CR>", opts) -- vertical split
keymap.set("n", "<leader>wh", ":split<CR>", opts) -- horizontal split

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comment
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
