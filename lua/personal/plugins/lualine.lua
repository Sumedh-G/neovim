--[[ LuaLine Configuration ]]--

local lualine_opts = {
  -- My personal options for lualine
  theme = 'tokyonight',
  always_divide_middle = false,
  sections = {
    lualine_a = {
      {
        'hostname',
        use_mode_colors = true,
      }
    },
    lualine_b = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      }
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
  tabline = {
    lualine_a = {
      {
        'buffers',
        filetype_names = {
          oil = 'Explorer',
          checkhealth = 'Health Check',
          mason = "Mason",
          lazy = "Lazy"
        },
        mode = 2,
        hide_filename_extension = false,
        icons_enabled = false,
      }
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
