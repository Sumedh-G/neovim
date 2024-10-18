
local which_opts = {
  -- my opts for which key
  preset = "helix",
  triggers = {
    { "<auto>", mode = "n" },
    { "<leader>", mode = "n" },
  },
  icons = {
    mappings = false,
  }
}

local which_keys = {
  {
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Local Keymaps",
  },
}

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = which_opts,
  keys = which_keys,
}
