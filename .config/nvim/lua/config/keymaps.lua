local keymap = vim.keymap

-- Windows
keymap.set("n", "<leader>w", "<C-w>")
keymap.set("n", "<leader>s|", "<cmd>vsplit<CR>") -- vertical split
keymap.set("n", "<leader>s-", "<cmd>split<CR>")  -- horizontal split

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Formatting
keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format file" })

-- Buffer options
keymap.set("n", "<leader>tw", "<cmd>set invwrap<CR>")

-- Movement
keymap.set("n", "<C-j>", "<C-d>zz")
keymap.set("n", "<C-k>", "<C-u>zz")
