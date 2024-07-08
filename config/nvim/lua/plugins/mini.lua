local greetings = function()
    local hour = tonumber(vim.fn.strftime("%H"))
    -- [04:00, 12:00) - morning, [12:00, 20:00) - day, [20:00, 04:00) - evening
    local part_id = math.floor((hour + 4) / 8) + 1
    local day_part = ({ "evening", "morning", "afternoon", "evening" })[part_id]
    local username = vim.loop.os_get_passwd()["username"] or "USERNAME"

    return ("Good %s, %s"):format(day_part, username)
end

return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.ai").setup()
        require("mini.bracketed").setup()
        require("mini.bufremove").setup()
        require("mini.comment").setup()
        require("mini.cursorword").setup()
        require("mini.jump").setup()
        require("mini.operators").setup()
        require("mini.pairs").setup()
        require("mini.starter").setup({
            items = {
                require("mini.starter").sections.builtin_actions(),
                require("mini.starter").sections.recent_files(5, true),
            },
            header = [[
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

]] .. greetings(),
            footer = "",
        })
        require("mini.surround").setup()
    end,
    lazy = false,
}
