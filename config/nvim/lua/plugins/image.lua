return {
	"3rd/image.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function()
        require("image").setup({})
	end,
}
