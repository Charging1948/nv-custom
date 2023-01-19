local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["f3fora/nvim-texlabconfig"] = {
    config = require "custom.plugins.texlabconfig",
    ft = { "tex", "bib" }, -- for lazy loading
    run = "go build",
    requires = { "neovim/nvim-lspconfig" },
  },

  ["Pocco81/TrueZen.nvim"] = {},

  ["Pocco81/auto-save.nvim"] = {
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },

  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["ggandor/leap.nvim"] = {
    config = function()
      require("leap").add_default_mappings()
    end,
    requires = { "tpope/vim-repeat" },
  },

  ["nvim-neorg/neorg"] = {
    run = ":Neorg sync-parsers", -- This is the important bit!
    ft = "norg",
    after = { "nvim-treesitter", "telescope.nvim" },
    config = require "custom.plugins.neorg",
    requires = { "nvim-lua/plenary.nvim", "Pocco81/TrueZen.nvim" },
  },

  ["sigmasd/deno-nvim"] = {
    requires = { "neovim/nvim-lspconfig" },
  },

  -- utilities, not strictly required
  ["andweeb/presence.nvim"] = {},
  ["ThePrimeagen/vim-be-good"] = {},
  ["wakatime/vim-wakatime"] = {},
}
