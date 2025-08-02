return {
  {
    'NeogitOrg/neogit',
    enabled = false,
    cmd = 'Neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
    },
    config = true,
    keys = {
      {
        '<leader>gg',
        function()
          require('neogit').open { kind = 'split' }
        end,
        desc = 'Neogit',
      },
    },
  },
}
