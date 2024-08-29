
local telescope_opts = {
  -- Personal settings for telescope
  defaults = {
    preview = { hide_on_startup = false },
  },
}

local telescope_keymaps = {
  -- My Keymaps for telescope
  { '<leader>f', "<cmd>Telescope find_files<cr>", {} },
  { '<leader>gf', "<cmd>Telescope live_grep<cr>", {} },
  { '<leader>bf', "<cmd>Telescope buffers<cr>", {} },
  { '<leader>hf', "<cmd>Telescope help_tags<cr>", {} },
}

return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = telescope_opts,
  keys = telescope_keymaps,
}
