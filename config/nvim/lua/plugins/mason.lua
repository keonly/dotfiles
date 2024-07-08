local opts = {
	ensure_installed = {
		"efm",
	},
	automatic_installation = true,
}

return {
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		event = "BufReadPre",
		config = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},

	{
		"williamboman/mason-lspconfig.nvim",
		opts = opts,
		event = "BufReadPre",
	},
}
