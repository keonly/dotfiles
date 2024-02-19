local config = function()
	require("obsidian").setup({
		workspaces = {
			{
				name = "personal",
				path = "~/garden",
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
end

return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = config,
}
