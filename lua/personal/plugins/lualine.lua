--[[ LuaLine Configuration ]]--

local lualine_opts = {
  -- My personal options for lualine
  theme = 'tokyonight',
  always_divide_middle = false,
  sections = {
    lualine_a = {
      {
        'buffers',
        hide_filename_extension = true,
        filetype_names = {
          oil = 'Explorer',
        },
        use_mode_colors = true,
      }
    },
    lualine_b = {
    },
    lualine_c = {
      'branch',
      'diff',
    },
    lualine_x = {
      'filetype', 
      'filesize',
    },
    lualine_y = {
      'diagnostics',
    },
    lualine_z = {
      'mode',
    }
  },
}

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 1000,
  opts = lualine_opts,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
