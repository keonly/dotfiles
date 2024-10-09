return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = true,
                    hidden = true,
                },
                live_grep = {
                    previewer = true,
                },
                buffers = {
                    previewer = true,
                },
            },
        })
    end,
    keys = {
        { "<leader>fk", "<cmd>Telescope keymaps<CR>",    desc = "Fuzzy find keymaps" },
        { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Fuzzy find helps" },
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Fuzzy find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Fuzzy find in directory" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Fuzzy find buffers" },
        {
            "<leader>fl",
            function()
                require("telescope").extensions.lazygit.lazygit()
            end,
            desc = "Fuzzy find LazyGit instances",
        },
    },
}
