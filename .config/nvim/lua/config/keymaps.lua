local keymap = vim.keymap

-- Open
keymap.set("n", "<leader>op", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>ob", "<cmd>Neotree focus buffers left<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>og", "<cmd>Neotree focus git_status left<CR>", { noremap = true, silent = true })

-- Windows
keymap.set("n", "<leader>w", "<C-w>")
keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>") -- vertical split
keymap.set("n", "<leader>sh", "<cmd>split<CR>") -- horizontal split

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Git
keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
keymap.set("n", "<leader>gd", "<cmd>Gitsigns toggle_deleted<CR>")

-- Formatting
keymap.set("n", "<leader>cf", vim.lsp.buf.format, {desc = "Format file"})

-- Obsidian
keymap.set("n", "<leader>bf", "<cmd>ObsidianFollowLink<CR>")
keymap.set("n", "<leader>bb", "<cmd>ObsidianBacklink<CR>")
keymap.set("n", "<leader>bt", "<cmd>ObsidianTemplate<CR>")

-- Buffer options
keymap.set("n", "<leader>tw", "<cmd>set invwrap<CR>")
