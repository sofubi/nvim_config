return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  config = function()
    require('nvim-treesitter.configs').setup {
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
      sync_install = false,
    }
  end,
  cond = function()
    return vim.api.nvim_buf_line_count(0) < 10000
  end,
  build = ':TSUpdate',
}
