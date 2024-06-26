return {
    "akinsho/git-conflict.nvim",
    lazy = false,
    version = "*",
    config = true,
    keys = {
        { "<leader>gco", "<cmd>GitConflictChooseOurs<CR>",   desc = "Git Conflict: Choose ours" },
        { "<leader>gct", "<cmd>GitConflictChooseTheirs<CR>", desc = "Git Conflict: Choose theirs" },
        { "<leader>gca", "<cmd>GitConflictChooseBoth<CR>",   desc = "Git Conflict: Choose both" },
        { "<leader>gcx", "<cmd>GitConflictChooseNone<CR>",   desc = "Git Conflict: Choose none" },
        { "<leader>gcj", "<cmd>GitConflictNextConflict<CR>", desc = "Git Conflict: Next" },
        { "<leader>gck", "<cmd>GitConflictPrevConflict<CR>", desc = "Git Conflict: Previous" },
        { "<leader>gcl", "<cmd>GitConflictListQf<CR>",       desc = "Git Conflict: Show list" },
    },
}
