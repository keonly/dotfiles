local ascii_art = [[
      ___           ___                       ___
     /\__\         /\__\          ___        /\__\
    /::|  |       /:/  /         /\  \      /::|  |
   /:|:|  |      /:/  /          \:\  \    /:|:|  |
  /:/|:|  |__   /:/__/  ___      /::\__\  /:/|:|__|__
 /:/ |:| /\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\
 \/__|:|/:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /
     |:/:/  /   |:|__/:/  /  \::/__/           /:/  /
     |::/  /     \::::/__/    \:\__\          /:/  /
     /:/  /       ~~~~         \/__/         /:/  /
     \/__/                                   \/__/

]]

local greetings = function()
    local hour = tonumber(vim.fn.strftime("%H"))
    -- [04:00, 12:00) - morning, [12:00, 20:00) - day, [20:00, 04:00) - evening
    local part_id = math.floor((hour + 4) / 8) + 1
    local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
    local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

    return ("Good %s, %s"):format(day_part, username)
end

local items = function()
    return {
        { name = "Edit new buffer", action = "enew",  section = "Builtin actions" },
        { name = "Lazy open",       action = ":Lazy", section = "Builtin actions" },
        { name = "Quit Neovim",     action = "qall",  section = "Builtin actions" },
    }
end

local curr_time = function()
    local version = vim.version()
    local print_version = "NVIM v" .. version.major .. "." .. version.minor .. "." .. version.patch
    local datetime = os.date("%Y/%m/%d %H:%M:%S")

    return print_version .. " - " .. datetime
end

return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.ai").setup({
            custom_textobjects = {
                c = require("mini.ai").gen_spec.treesitter({ a = "@class.outer", i = "@class.outer" }), -- Only outer is available
                f = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
                r = require("mini.ai").gen_spec.treesitter({ a = "@parameter.outer", i = "@parameter.inner" }),
                m = require("mini.ai").gen_spec.treesitter({ a = "@comment.outer", i = "@comment.outer" }), -- Only outer is available
            },
            n_lines = 150,
        })
        require("mini.bracketed").setup()
        require("mini.bufremove").setup()
        require("mini.comment").setup()
        require("mini.cursorword").setup()
        require("mini.jump").setup()
        require("mini.operators").setup()
        require("mini.starter").setup({
            items = items(),
            header = ascii_art .. greetings(),
            footer = curr_time(),
        })
        require("mini.surround").setup()
    end,
    lazy = false,
}
