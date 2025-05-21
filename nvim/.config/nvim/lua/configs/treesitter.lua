local options =  {
  ensure_installed = {
    "vim", "lua", "vimdoc", "luadoc", "printf",  
    "html", "css",
    "go", "gomod", "gosum", "gowork", "templ", "toml", "yaml", "markdown",
    "python", "elvish", "caddy", "csv", "diff", "dot", "dart", "dockerfile", "editorconfig",
    "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true
  },
}

require("nvim-treesitter.configs").setup(options)


