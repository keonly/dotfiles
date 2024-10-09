return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({})
    end,
    keys = {
        { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle line blame" },
        { "<leader>gd", "<cmd>Gitsigns toggle_deleted<CR>",            desc = "Toggle deleted lines" },
    },
}
