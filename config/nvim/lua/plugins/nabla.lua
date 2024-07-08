return {
	"jbyuki/nabla.nvim",
	keys = {
		{
			"<leader>on",
			function()
				require("nabla").popup()
			end,
			desc = "Notation",
		},
	},
	config = function()
		require("nabla").enable_virt({
			autogen = true,
			silent = true,
		})
	end,
}
