return {
  {
    'zk-org/zk-nvim',
    ft = 'markdown',
    config = function()
      require('zk').setup()
    end,
    keys = {
      { '<leader>zn', "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", desc = 'new note' },
      { '<leader>zn', '<Cmd>ZkNewTitleFromSelection<CR>', mode = 'v', desc = 'new note' },
      { '<leader>zd', "<Cmd>ZkNew { dir = 'daily' }<CR>", desc = 'new daily entry' },
      { '<leader>zo', "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", desc = 'list notes' },
      { '<leader>zt', '<Cmd>ZkTags<CR>', desc = 'list note tags' },
      { '<leader>zf', "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", desc = 'search notes' },
      { '<leader>zf', '<Cmd>ZkMatch<CR>', mode = 'v', desc = 'search notes' },
      { '<leader>zb', '<Cmd>ZkBacklinks<CR>', desc = 'backlinks' },
      { '<leader>zl', '<Cmd>ZkLinks<CR>', desc = 'links' },
      { '<leader>zi', '<Cmd>ZkInsertLink<CR>', mode = 'n', desc = 'insert link' },
      { '<leader>zi', '<Cmd>ZkInsertLinkAtSelection { matchSelected = true }<CR>', mode = 'v', desc = 'insert link' },
    },
  },
}
