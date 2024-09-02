return {
	"luukvbaal/statuscol.nvim",
	event = "VeryLazy",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			ft_ignore = { "neo-tree", "lazy" },
			segments = {
				{
					text = { builtin.foldfunc, " " },
					click = "v:lua.ScFa",
					hl = "Comment",
				},
				{ text = { " " }, click = "v:lua.ScSa" },
				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
				{
					sign = {
						namespace = { "gitsign" },
						maxwidth = 1,
						auto = true,
					},
					click = "v:lua.ScSa",
				},
			},
		})
	end,
}
