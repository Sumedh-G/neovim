--[[ LuaLine Configuration ]]--

local lualine_opts = {
  -- My personal options for lualine
  theme = 'tokyonight',
}

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 1000,
  opts = lualine_opts,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
