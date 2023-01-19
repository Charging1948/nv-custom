local autocmd = vim.api.nvim_create_autocmd

-- set relative number per default
vim.o.number = 1
vim.o.relativenumber = 1

-- set scrolloffset to 8, improve navigation
vim.o.scrolloff = 8

-- set scale factor for neovide
vim.g.neovide_scale_factor=1.0

-- function ChangeScaleFactor(delta)
--     vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
-- end

-- set guifont for neovide
vim.o.guifont = "FiraCode Nerd Font Mono:h12"
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

vim.g.neovide_multigrid = true

-- disable mouse
vim.o.mouse=nil
