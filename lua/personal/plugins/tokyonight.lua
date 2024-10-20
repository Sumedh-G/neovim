--[[ Tokyo Night ]]--

--[[
Options
]]--
local tokyonight_opts = {
  style = "night",
  light_style = "day",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "transparent",
    floats = "transparent",
  },
  dim_inactive = false,
  lualine_bold = false,
  telescope = true,
  lualine = true,
}

--[[
Lazy Configuration
]]--
return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup(tokyonight_opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
