local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- Fix warning in insert mode, see https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
capabilities.offsetEncoding = { "utf-16" }

-- local lspconfig = require("plugins.configs.lspconfig")

local servers = { "html", "cssls", "clangd", "astro", "denols", "cssls", "texlab", "svelte", "tsserver", "rust_analyzer", "emmet_ls", "dockerls", "cmake" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["texlab"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = require("custom.lspconfigs.texlab").settings
}

lspconfig.denols.setup({
  root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc', 'import_map.json'),
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tsserver.setup({
  single_file_support = false,
  on_attach = on_attach,
  capabilities = capabilities,
})
