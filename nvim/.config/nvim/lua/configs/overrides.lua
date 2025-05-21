local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    -- "typescript",
    -- "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "go",
    "python",
    "vimdoc",
    "vim",
    "lua",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    "gopls",
    "pyright",
    --"mypy",
    -- "ruff",
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
