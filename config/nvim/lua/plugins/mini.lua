local config = function()
	require("mini.ai").setup()
    require("mini.bracketed").setup()
	require("mini.bufremove").setup()
	require("mini.comment").setup()
	require("mini.cursorword").setup()
	require("mini.jump").setup()
	require("mini.operators").setup()
	require("mini.pairs").setup()
	require("mini.surround").setup()
end

return {
	"echasnovski/mini.nvim",
	version = false,
	config = config,
	lazy = false,
}
