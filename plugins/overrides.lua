local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "c",
    "bibtex",
    "latex",
    "make",
    "norg",
    "norg_meta",
    "markdown",
    "python",
    "regex",
    "rst",
    "scss",
    "svelte",
    "tsx",
    "yaml",
    "toml",
    "json",
    "javascript",
    "gitignore",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "deno",
    "emmet-ls",
    "json-lsp",
    "astro-language-server",
    "svelte-language-server",

    -- c & rust
    "clangd",
    "clang-format",
    "rust_analyzer",
    "rustfmt",

    --LaTeX
    "texlab",
    "ltex-ls",
    "tectonic",

    -- various supportives
    "dockerfile-language-server",
    "yamlfmt",
    "yamllint",
    "yaml-language-server",

    "autoflake",
    "autopep8",
    "debugpy",
    "pydocstyle",
    "pylama",
    "python-lsp-server",

    -- shell
    "shfmt",
    "shellcheck",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
