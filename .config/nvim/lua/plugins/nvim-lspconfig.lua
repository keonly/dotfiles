local diagnostic_signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts)               -- go to definition
    vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", opts)      -- peek definition
    vim.keymap.set("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts)      -- go to definition
    vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)          -- see available code actions
    vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)               -- smart rename
    vim.keymap.set("n", "<leader>nl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
    vim.keymap.set("n", "<leader>nc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
    vim.keymap.set("n", "<leader>np", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to prev diagnostic in buffer
    vim.keymap.set("n", "<leader>nn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)                     -- show documentation for what is under cursor
end

local config = function()
    require("neodev").setup({})
    require("neoconf").setup({})
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local lspconfig = require("lspconfig")

    for type, icon in pairs(diagnostic_signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- lua
    lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
            Lua = {
                -- make the language server recognize "vim" global
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    -- make language server aware of runtime files
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.stdpath("config") .. "/lua"] = true,
                    },
                },
            },
        },
    })

    -- json
    lspconfig.jsonls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "json", "jsonc" },
    })

    -- python
    lspconfig.pyright.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
            pyright = {
                disableOrganizeImports = false,
                analysis = {
                    useLibraryCodeForTypes = true,
                    autoSearchPaths = true,
                    diagnosticMode = "workspace",
                    autoImportCompletions = true,
                },
            },
        },
    })

    -- typescript
    lspconfig.tsserver.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {
            "typescript",
        },
        root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
    })

    -- bash
    lspconfig.bashls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "sh" },
    })

    -- solidity
    lspconfig.solidity.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "solidity" },
    })

    -- html, typescriptreact, javascriptreact, css, sass, scss, less, svelte, vue
    lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "javascript",
            "css",
            "sass",
            "scss",
            "less",
            "svelte",
            "vue",
        },
    })

    -- docker
    lspconfig.dockerls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
    })

    -- rust
    lspconfig.rust_analyzer.setup({
        settings = {
            ["rust-analyzer"] = {},
        },
        capabilities = capabilities,
        on_attach = on_attach,
    })

    -- markdown
    lspconfig.marksman.setup({})

    local luacheck = require("efmls-configs.linters.luacheck")
    local stylua = require("efmls-configs.formatters.stylua")
    local flake8 = require("efmls-configs.linters.flake8")
    local black = require("efmls-configs.formatters.black")
    local eslint_d = require("efmls-configs.linters.eslint_d")
    local prettierd = require("efmls-configs.formatters.prettier_d")
    local fixjson = require("efmls-configs.formatters.fixjson")
    local shellcheck = require("efmls-configs.linters.shellcheck")
    local shfmt = require("efmls-configs.formatters.shfmt")
    local alex = require("efmls-configs.linters.alex")
    local hadolint = require("efmls-configs.linters.hadolint")
    local solhint = require("efmls-configs.linters.solhint")

    -- configure efm server
    lspconfig.efm.setup({
        filetypes = {
            "lua",
            "python",
            "json",
            "jsonc",
            "sh",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "svelte",
            "vue",
            "markdown",
            "docker",
            "solidity",
        },
        init_options = {
            documentFormatting = true,
            documentRangeFormatting = true,
            hover = true,
            documentSymbol = true,
            codeAction = true,
            completion = true,
        },
        settings = {
            languages = {
                lua = { luacheck, stylua },
                python = { flake8, black },
                typescript = { eslint_d, prettierd },
                json = { eslint_d, fixjson },
                jsonc = { eslint_d, fixjson },
                sh = { shellcheck, shfmt },
                javascript = { eslint_d, prettierd },
                javascriptreact = { eslint_d, prettierd },
                typescriptreact = { eslint_d, prettierd },
                svelte = { eslint_d, prettierd },
                vue = { eslint_d, prettierd },
                markdown = { alex, prettierd },
                docker = { hadolint, prettierd },
                solidity = { solhint },
            },
        },
    })
end

return {
    "neovim/nvim-lspconfig",
    config = config,
    lazy = false,
    dependencies = {
        "windwp/nvim-autopairs",
        "williamboman/mason.nvim",
        "creativenull/efmls-configs-nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
    },
}
