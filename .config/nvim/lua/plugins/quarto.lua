local config = function()
    require("quarto").setup({
        lspFeatures = {
            -- NOTE: put whatever languages you want here:
            languages = { "r", "python", "rust" },
            chunks = "all",
            diagnostics = {
                enabled = true,
                triggers = { "BufWritePost" },
            },
            completion = {
                enabled = true,
            },
        },
        codeRunner = {
            enabled = true,
            default_method = "molten",
        },
    })
end

return {
    "quarto-dev/quarto-nvim",
    dev = false,
    dependencies = {
        {
            "jmbuhr/otter.nvim",
            dev = false,
            dependencies = {
                { "neovim/nvim-lspconfig" },
            },
            opts = {
                buffers = {
                    -- if set to true, the filetype of the otterbuffers will be set.
                    -- otherwise only the autocommand of lspconfig that attaches
                    -- the language server will be executed without setting the filetype
                    set_filetype = true,
                },
            },
        },
    },
    config = config,
}
