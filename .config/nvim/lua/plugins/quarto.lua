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
		keymap = {},
		codeRunner = {
			enabled = true,
			default_method = "molten",
		},
	})

	local runner = require("quarto.runner")
	vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "Run cell", silent = true })
	vim.keymap.set("n", "<localleader>rp", runner.run_above, { desc = "Run cell and previous", silent = true })
	vim.keymap.set("n", "<localleader>ra", runner.run_all, { desc = "Run all cells", silent = true })
	vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "Run line", silent = true })
	vim.keymap.set("v", "<localleader>rr", runner.run_range, { desc = "Run visual range", silent = true })
	vim.keymap.set("n", "<localleader>RA", function()
		runner.run_all(true)
	end, { desc = "Run all cells of all languages", silent = true })
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
