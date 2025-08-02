return {
  {
    'folke/lazydev.nvim',
    ft = 'lua', -- only load on lua files
    dependencies = {
      { 'gonstoll/wezterm-types', lazy = true },
    },
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        { path = 'wezterm-types', mods = { 'wezterm' } },
      },
    },
  },
  -- { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
}
