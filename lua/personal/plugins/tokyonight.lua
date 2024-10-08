--[[ Tokyo Night ]]--

--[[
Options
]]--
local tokyonight_opts = {
  style = "night",
  light_style = "day",
  transparent = true,
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
  --[[
  on_colors = function(colors)
    colors.bg = colors.bg_dark
  end,
  ]]--
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
