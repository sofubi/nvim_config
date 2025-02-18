return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'MeanderingProgrammer/render-markdown.nvim',
    },
    version = '*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = 'mono',
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'markdown' },
        providers = {
          markdown = {
            name = 'RenderMarkdown',
            module = 'render-markdown.integ.blink',
            fallbacks = { 'lsp' },
          },
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
        enabled = false,
      },
    },
    opts_extend = { 'sources.default' },
  },
}
