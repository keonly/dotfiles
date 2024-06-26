local config = function()
    vim.g.molten_image_provider = "image.nvim"
    vim.g.molten_output_win_max_height = 20
    vim.g.molten_auto_open_output = false
    vim.g.molten_wrap_output = true
    vim.g.molten_virt_text_output = true
    vim.g.molten_virt_lines_off_by_1 = true
end

return {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = config,
    keys = {
        {
            "<leader>me",
            "<cmd>MoltenEvaluateOperator<CR>",
            { desc = "Molten: Evaluate operator", silent = true }
        },
        {
            "<leader>mo",
            "<cmd>noautocmd MoltenEnterOutput<CR>",
            { desc = "Molten: Open output window", silent = true }
        },
        {
            "<leader>mr",
            "<cmd>MoltenReevaluateCell<CR>",
            { desc = "Molten: Re-eval cell", silent = true }
        },
        {
            "<leader>mv",
            "<cmd><C-u>MoltenEvaluateVisual<CR>gv",
            { desc = "Molten: Execute visual selection", silent = true }
        },
        {
            "<leader>mh",
            "<cmd>MoltenHideOutput<CR>",
            { desc = "Molten: Close output window", silent = true }
        },
        {
            "<leader>md",
            "<cmd>MoltenDelete<CR>",
            { desc = "Molten: Delete Molten cell", silent = true }
        },
    },
}
