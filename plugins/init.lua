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
  -- ["nvim-telescope/telescope.nvim"] = {
  --   config = function ()
  --   end
  -- },
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

  ["mfussenegger/nvim-dap"] = {
    setup = function()
      -- require "custom.plugins.nvim-dap"
    end,
  },

  ["rcarriga/nvim-dap-ui"] = {
    setup = function()
      require("dapui").setup {
        icons = { expanded = "", collapsed = "", current_frame = "" },
        mappings = {
          -- Use a table to apply multiple mappings
          expand = { "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          edit = "e",
          repl = "r",
          toggle = "t",
        },
        -- Use this to override mappings for specific elements
        element_mappings = {
          -- Example:
          -- stacks = {
          --   open = "<CR>",
          --   expand = "o",
          -- }
        },
        -- Expand lines larger than the window
        -- Requires >= 0.7
        expand_lines = vim.fn.has "nvim-0.7" == 1,
        -- Layouts define sections of the screen to place windows.
        -- The position can be "left", "right", "top" or "bottom".
        -- The size specifies the height/width depending on position. It can be an Int
        -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
        -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
        -- Elements are the elements shown in the layout (in order).
        -- Layouts are opened in order so that earlier layouts take priority in window sizing.
        layouts = {
          {
            elements = {
              -- Elements can be strings or table with id and size keys.
              { id = "scopes", size = 0.25 },
              "breakpoints",
              "stacks",
              "watches",
            },
            size = 40, -- 40 columns
            position = "left",
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
          },
        },
        controls = {
          -- Requires Neovim nightly (or 0.8 when released)
          enabled = true,
          -- Display controls in this element
          element = "repl",
          icons = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "",
            terminate = "",
          },
        },
        floating = {
          max_height = nil, -- These can be integers or a float between 0 and 1.
          max_width = nil, -- Floats will be treated as percentage of your screen.
          border = "single", -- Border style. Can be "single", "double" or "rounded"
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
        windows = { indent = 1 },
        render = {
          max_type_length = nil, -- Can be integer or nil.
          max_value_lines = 100, -- Can be integer or nil.
        },
      }
    end,
    requires = { "mfussenegger/nvim-dap" },
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
