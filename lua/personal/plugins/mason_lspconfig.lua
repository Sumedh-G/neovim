
local mason_lspconfig_opts = {
  -- Options
}

local lspconfig_handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signatureHelp, { border = "rounded" }),
}


return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim" },
  config = function()
    require("mason-lspconfig").setup(mason_lspconfig_opts)

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
          handlers = lspconfig_handlers,
        })
      end,
    })
  end,
}
