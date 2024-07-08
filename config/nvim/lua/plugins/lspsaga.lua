return {
	"nvimdev/lspsaga.nvim",
	lazy = false,
	config = function()
		require("lspsaga").setup({
			-- Navigation within lspsaga window
			move_in_saga = {
				prev = "<C-k>",
				next = "<C-j>",
			},
			-- Use enter key to open in finder
			finder_action_keys = {
				open = "<CR>",
			},
			-- Use enter key to open in definition preview
			definition_action_keys = {
				edit = "<CR>",
			},
			ui = {
				code_action = " ",
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
