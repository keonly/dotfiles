return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "Vault",
					path = "~/Vault",
				},
			},
			disable_frontmatter = true,
			-- note_frontmatter_func = function(note)
			-- 	local out = { title = note.title, tags = note.tags }
			-- 	if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
			-- 		for k, v in pairs(note.metadata) do
			-- 			out[k] = v
			-- 		end
			-- 	end
			-- 	return out
			-- end,
			attachments = {
				img_folder = "extras/images",
			},
			templates = {
				subdir = "extras/templates",
				substitutions = {},
			},
		})
	end,
	keys = {
		{ "<leader>bf", "<cmd>ObsidianFollowLink<CR>", desc = "Obsidian: Follow link" },
		{ "<leader>bb", "<cmd>ObsidianBacklinks<CR>", desc = "Obsidian: Show backlinks" },
		{ "<leader>bt", "<cmd>ObsidianTemplate<CR>", desc = "Obsidian: Insert a template" },
	},
}
