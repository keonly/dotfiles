local config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dap.listeners.before.attach.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
    end
end

return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
    },
    config = config,
    keys = {
        {
            "<leader>db",
            function() require("dap").toggle_breakpoint() end,
            { desc = "Toggle breakpoint" },
        },
        {
            "<leader>dc",
            function() require("dap").continue() end,
            { desc = "Continue execution" },
        },
    },
}
