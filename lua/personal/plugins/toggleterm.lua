
local toggleterm_opts = {
  -- opts for toggleterm
  open_mapping = [[<c-t>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  close_on_exit = true,
  terminal_mappings = true,
  direction = 'horizontal'
}

return {
  "akinsho/toggleterm.nvim",
  opts = toggleterm_opts,
  version = "*",
}
