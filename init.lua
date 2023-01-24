local autocmd = vim.api.nvim_create_autocmd

-- set relative number per default
vim.o.number = 1
vim.o.relativenumber = 1

-- set scrolloffset to 8, improve navigation
vim.o.scrolloff = 8

-- set scale factor for neovide
vim.g.neovide_scale_factor=1.0

-- set guifont for neovide
vim.o.guifont = "FiraCode Nerd Font Mono:h10"
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

vim.g.luasnippets_path = "your snippets path"

-- disable mouse
vim.o.mouse=nil
