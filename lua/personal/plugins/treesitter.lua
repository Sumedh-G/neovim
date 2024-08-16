
local treesitter_opts = {
  -- Personal settings for treesitter
  ensure_installed = { 
    "c", 
    "lua", 
    "vim", 
    "vimdoc",
    "markdown",
    "markdown_inline"
  },
  sync_install = true,
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },

  additional_vim_regex_highlighting = false,
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup(treesitter_opts)
  end,
}


