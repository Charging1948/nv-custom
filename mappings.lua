local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>is"] = {
      function ()
         require("custom.functions").ChangeScaleFactor(1.125)
      end,
      "increase scale of neovide by 1.125",
    },
    ["<leader>ds"] = {
      function ()
        require("custom.functions").ChangeScaleFactor(1 / 1.125)
      end,
      "decrease scale of neovide by 1.125",
    },
  },
}

-- more keybinds!

return M
