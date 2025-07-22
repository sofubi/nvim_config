return {
  {
    'refractalize/oil-git-status.nvim',
    dependencies = {
      'stevearc/oil.nvim',
    },
    config = true,
  },
  {
    'stevearc/oil.nvim',
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      win_options = {
        signcolumn = 'yes:2',
      },
      keymaps = {
        ['gy'] = {
          'actions.yank_entry',
          opts = {
            modify = ':p:.',
          },
        },
      },
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = {
      { 'echasnovski/mini.icons' },
    },
    keys = {
      {
        '-',
        '<cmd>Oil<cr>',
        desc = 'Oil - Open parent',
      },
    },
  },
}
