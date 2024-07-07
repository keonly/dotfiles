return {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
        vim.cmd([[highlight Headline1 guibg=#cba6f7 guifg=#161616 gui=bold]])
        vim.cmd([[highlight Headline2 guibg=#89b4fa guifg=#161616 gui=bold]])
        vim.cmd([[highlight Headline3 guibg=#a6e3a1 guifg=#161616 gui=bold]])
        vim.cmd([[highlight Headline4 guibg=#f9e2af guifg=#161616 gui=bold]])
        vim.cmd([[highlight Headline5 guibg=#fab387 guifg=#161616 gui=bold]])
        vim.cmd([[highlight Headline6 guibg=#f38ba8 guifg=#161616 gui=bold]])

        vim.cmd([[highlight @text.title.1.marker.markdown guifg=#161616 gui=bold]])
        vim.cmd([[highlight @text.title.2.marker.markdown guifg=#161616 gui=bold]])
        vim.cmd([[highlight @text.title.3.marker.markdown guifg=#161616 gui=bold]])
        vim.cmd([[highlight @text.title.4.marker.markdown guifg=#161616 gui=bold]])
        vim.cmd([[highlight @text.title.5.marker.markdown guifg=#161616 gui=bold]])
        vim.cmd([[highlight @text.title.6.marker.markdown guifg=#161616 gui=bold]])

        require("headlines").setup({
            markdown = {
                -- If set to false, headlines will be a single line and there will be no
                -- "fat_headline_upper_string" and no "fat_headline_lower_string"
                fat_headlines = false,
                --
                -- Lines added above and below the header line makes it look thicker
                -- "lower half block" unicode symbol hex:2584
                -- "upper half block" unicode symbol hex:2580
                fat_headline_upper_string = "▄",
                fat_headline_lower_string = "▀",
                --
                -- You could add a full block if you really like it thick ;)
                -- fat_headline_upper_string = "█",
                -- fat_headline_lower_string = "█",
                --
                -- Other set of lower and upper symbols to try
                -- fat_headline_upper_string = "▃",
                -- fat_headline_lower_string = "-",
                --
                headline_highlights = {
                    "Headline1",
                    "Headline2",
                    "Headline3",
                    "Headline4",
                    "Headline5",
                    "Headline6",
                },
                bullet_highlights = {
                    "@text.title.1.marker.markdown",
                    "@text.title.2.marker.markdown",
                    "@text.title.3.marker.markdown",
                    "@text.title.4.marker.markdown",
                    "@text.title.5.marker.markdown",
                    "@text.title.6.marker.markdown",
                },

                bullets = { "◉", "○", "󰛄", "✸", "✿", "󰴈" },
            },
        })
    end,
    ft = { "markdown" },
}
