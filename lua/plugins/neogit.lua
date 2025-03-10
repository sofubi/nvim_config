return {
  {
    'sindrets/diffview.nvim',
    cmd = 'DiffviewOpen',
  },
  {
    'NeogitOrg/neogit',
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
