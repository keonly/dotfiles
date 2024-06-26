local config = function()
    require("gitsigns").setup({})
end

return {
    "lewis6991/gitsigns.nvim",
    config = config,
    keys = {
        { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle line blame", },
        { "<leader>gd", "<cmd>Gitsigns toggle_deleted<CR>", desc = "Toggle deleted lines", },
    },
}
