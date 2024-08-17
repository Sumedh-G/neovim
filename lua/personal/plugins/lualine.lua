--[[ LuaLine Configuration ]]--

local lualine_opts = {
  -- My personal options for lualine
  theme = 'tokyonight',
  sections = {
    lualine_a = {'buffers'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'searchcount', 'selectioncount'},
    lualine_x = {'diagnostics'},
    lualine_y = {'filetype', 'filesize'},
    lualine_z = {'mode'}
  },
}

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 1000,
  opts = lualine_opts,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
