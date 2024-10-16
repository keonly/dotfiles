return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = false,
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                symlink_target = {
                    enabled = true,
                },
            },
            source_selector = {
                winbar = true,
                statusline = true,
            },
            window = {
                mappings = {
                    ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
                },
            },
        })
    end,
    keys = {
        {
            "<leader>op",
            "<cmd>Neotree toggle<CR>",
            desc = "Toggle file tree",
            { noremap = true, silent = true },
        },
        {
            "<leader>ob",
            "<cmd>Neotree focus buffers left<CR>",
            desc = "Toggle buffer tree",
            { noremap = true, silent = true },
        },
        {
            "<leader>og",
            "<cmd>Neotree focus git_status left<CR>",
            desc = "Toggle git tree",
            { noremap = true, silent = true },
        },
    },
}
