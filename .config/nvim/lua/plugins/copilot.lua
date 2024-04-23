local config = function()
    require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
    })
end

return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = config,
}
