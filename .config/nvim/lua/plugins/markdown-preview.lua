return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_images_path = "/home/keon/garden"
	end,
	ft = { "markdown" },
}
