
local toggleterm_opts = {
  -- opts for toggleterm
  open_mapping = [[<c-t>]],
  insert_mappings = true,
  terminal_mappings = true,
  direction = 'horizontal'
}

return {
  "akinsho/toggleterm.nvim",
  opts = toggleterm_opts,
  version = "*",
}
