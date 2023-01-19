local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    -- ["<C-+>"] = { ChangeScaleFactor(1.125), "command mode" },
    -- ["<C-->"] = {
    --   ChangeScaleFactor(1 / 1.125),
    -- },
  },
}

-- more keybinds!

return M
