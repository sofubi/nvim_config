return {
  {
    'kevinhwang91/nvim-bqf', -- better quickfix
    event = 'Filetype qf',
    dependencies = {
      {
        'junegunn/fzf', -- bqf requires
      },
    },
    {
      'stevearc/quicker.nvim', -- additional quickfix improvements
      opts = {},
      event = 'Filetype qf',
    },
  },
}
