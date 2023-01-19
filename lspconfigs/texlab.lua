-- local b_executable = "tectonic"
-- local b_args = {
--   "-X",
--   "compile",
--   "%f",
--   "--synctex",
--   "--keep-logs",
--   "--keep-intermediates",
-- }

local b_executable = "latexmk"
local b_args = {
  "-pdf",
  "-interaction=nonstopmode",
  "-synctex=1",
  "%f",
}

local fs_executable = "zathura"
local fs_args = {
  "--synctex-editor-command",
  "[[nvim-texlabconfig -file '%{input}' -line %{line}]]",
  "--synctex-forward",
  "%l:1:%f",
  "%p",
}

local M = {}

M = {
  settings = {
    texlab = {
      auxDirectory = "aux",
      build = {
        onSave = true,
        forwardSearchAfter = true,
        executable = b_executable,
        args = b_args,
      },
      chktex = {
        onOpenAndSave = true 
      },
      forwardSearch = {
        executable = fs_executable,
        args = fs_args,
      },
    },
  },
}

return M
