vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "octo",
	callback = function()
        vim.cmd([[setlocal number relativenumber cursorline nowrap]])
    end,
})
