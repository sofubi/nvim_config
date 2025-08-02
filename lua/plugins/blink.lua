return {
  {
    'saghen/blink.cmp',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        version = 'v2.*',
        build = 'make install_jsregexp',
        config = function()
          require('luasnip.loaders.from_snipmate').lazy_load()
        end,
      },
    },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = 'default',
        ['<C-s>'] = { 'show', 'show_documentation', 'hide_documentation' },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = 'mono',
      },
      snippets = { preset = 'luasnip' },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        per_filetype = {
          sql = { 'snippets', 'dadbod', 'buffer' },
        },
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = {
            name = 'LazyDev',
            module = 'lazydev.integrations.blink',
            score_offset = 100,
          },
          dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
        },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        ghost_text = {
          enabled = true,
        },
      },
      signature = {
        enabled = true,
      },
      cmdline = {
        keymap = {
          ['<Tab>'] = { 'show', 'accept' },
        },
        completion = { menu = { auto_show = function(ctx) return vim.fn.getcmdtype() == '@' end } },
      }
    },
    opts_extend = { 'sources.default' },
  },
}
