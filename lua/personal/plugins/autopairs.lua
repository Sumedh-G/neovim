
local autopairs_opts = {
  -- My Options for autopairs
}

return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  config = true,
  opts = autopairs_opts,
}
