local config = function()
	require("neo-tree").setup({
		close_if_last_window = false,
		enable_git_status = true,
		enable_diagnostics = true,
		enable_normal_mode_for_inputs = false,
		default_component_configs = {
			symlink_target = {
				enabled = true,
			},
		},
		source_selector = {
			winbar = true,
			statusline = true,
		},
	})
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = config,
}
