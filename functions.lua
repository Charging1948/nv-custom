M = {}

M.ChangeScaleFactor = function (delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

return M
