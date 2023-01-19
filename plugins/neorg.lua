return function()
require("neorg").setup {
    -- configuration here
    load = {
      ["core.defaults"] = {},
      ["core.fs"] = {},
      ["core.norg.dirman"] = {
        config = {
          workspaces = {
            terminder = "~/.srcs/notes",
            work = "~/notes/work",
            home = "~/notes/home",
          },
        },
      },
      ["core.presenter"] = {
        config = {
          zen_mode = "truezen"
        }
      },
      ["core.export"] = {},
      ["core.norg.concealer"] = {
        config = {
          icon_preset = "diamond",
          folds = false
        }
      },
      ["core.norg.manoeuvre"] = {},
      ["core.norg.completion"] = {
        config = {
          ["engine"] = "nvim-cmp",
        },
      },
    },
  }
end
