local config = function()
    require('legendary').setup({ extensions = { lazy_nvim = true } })
end

return {
    "mrjones2014/legendary.nvim",
    priority = 10000,
    lazy = false,
    config = config,
}
