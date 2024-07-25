return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			relculright = true,
			segments = {
				{ text = { builtin.foldfunc }, click = "v:lua.ScFa" },
				{
					sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
					click = "v:lua.ScSa",
				},
				{
					text = function()
						local rln = vim.fn.relnum()
						return rln == 0 and " " or string.format("%2d ", rln)
					end,
					condition = { true },
					style = "StatusColRelLine",
				},
				{
					text = function()
						return string.format("%3d", vim.fn.lnum())
					end,
					condition = { true },
					style = "StatusColAbsLine",
				},
				{
					sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
					click = "v:lua.ScSa",
				},
			},
		})
	end,
}
