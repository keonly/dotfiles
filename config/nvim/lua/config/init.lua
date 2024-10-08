require("config.globals")
require("config.keymaps")
require("config.lazy")
require("config.options")

local opts = {
	defaults = {
		lazy = true,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"netrw",
				"netrwPlugin",
			},
		},
	},
	change_detection = {
		notify = true,
	},
}

vim.cmd.colorscheme("catppuccin")
vim.cmd.set("termguicolors")
vim.opt.showmode = false
vim.opt.conceallevel = 1
