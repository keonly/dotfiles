return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			build = ":TSUpdate",
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			event = {
				"BufReadPre",
				"BufNewFile",
			},
			ensure_installed = {
				"c",
				"rust",
				"markdown",
				"markdown_inline",
				"json",
				"javascript",
				"typescript",
				"yaml",
				"html",
				"css",
				"markdown",
				"bash",
				"lua",
				"dockerfile",
				"gitignore",
				"python",
				"toml",
				"sql",
			},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-s>",
					node_incremental = "<C-s>",
					scope_incremental = false,
					node_decremental = "<BS>",
				},
			},
		})
	end,
}
