local config = function()
    local ibl = require("ibl")
    ibl.setup()
    ibl.overwrite({
        exclude = {
            filetypes = {
                "dashboard",
            },
        },
    })
end

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    config = config,
}
