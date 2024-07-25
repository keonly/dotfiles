return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			segments = {
				{
					text = { builtin.foldfunc, " " },
					click = "v:lua.ScFa",
					hl = "Comment",
				},
				{ text = { "%s" }, click = "v:lua.ScSa" },
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
