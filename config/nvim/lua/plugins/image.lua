return {
	"3rd/image.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function()
		package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
		package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

		require("image").setup({
			backend = "kitty",
		})
	end,
}
