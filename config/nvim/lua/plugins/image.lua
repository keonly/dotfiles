return {
    "3rd/image.nvim",
    lazy = true,
    ft = { "markdown" },
    config = function()
        package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
        package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

        require("image").setup({
            backend = "kitty",
            tmux_show_only_in_active_window = true,
        })
    end,
}
