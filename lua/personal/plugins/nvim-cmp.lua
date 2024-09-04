
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
  },
  event = { "InsertEnter" },
  config = function()
    local cmp = require('cmp')
    cmp.setup({

      window = {
        completion = cmp.config.window.bordered(),
      },

      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim-lsp' },
        { name = 'buffer' }
      }),

    })
  end
}
