
local barbecue_opts = {
  -- My opts for barbecue nvim
  theme = 'tokyonight',
  create_autocmd = false,
}

return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = barbecue_opts,
}
