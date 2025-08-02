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
    opts = {
      default_file_explorer = true,
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
      skip_confirm_for_simple_edits = true,
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
