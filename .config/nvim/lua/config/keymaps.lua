local keymap = vim.keymap

-- Open
keymap.set("n", "<leader>op", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>ob", "<cmd>Neotree focus buffers left<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>og", "<cmd>Neotree focus git_status left<CR>", { noremap = true, silent = true })

-- Focus
keymap.set("n", "<C-h>", "<C-w>h") -- left
keymap.set("n", "<C-j>", "<C-w>j") -- down
keymap.set("n", "<C-k>", "<C-w>k") -- up
keymap.set("n", "<C-l>", "<C-w>l") -- right

-- Windows
keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>") -- vertical split
keymap.set("n", "<leader>wh", "<cmd>split<CR>") -- horizontal split

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Git
keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
keymap.set("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>")

-- Formatting
keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
