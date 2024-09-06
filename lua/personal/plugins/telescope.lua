
local telescope_opts = {
  -- Personal settings for telescope
  defaults = {
    preview = { hide_on_startup = false },
  },
  pickers = {
    live_grep = {
      additional_args = function (opts)
        return {"--hidden"}
      end
    },
  },
}

local telescope_keymaps = {
  -- My Keymaps for telescope
  { '<leader>ff', "<cmd>Telescope find_files<cr>", {} },
  { '<leader>fg', "<cmd>Telescope live_grep<cr>", {} },
  { '<leader>fb', "<cmd>Telescope buffers<cr>", {} },
  { '<leader>fh', "<cmd>Telescope help_tags<cr>", {} },
}

return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = telescope_opts,
  keys = telescope_keymaps,
}
