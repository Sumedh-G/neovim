
local mason_lspconfig_opts = {
  -- Options
}

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim" },
  config = function()
    require("mason-lspconfig").setup(mason_lspconfig_opts)

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
    })
  end,
}
