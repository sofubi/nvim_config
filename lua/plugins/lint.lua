return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        markdown = { 'markdownlint' },
        python = { 'mypy' },
      }
      vim.api.nvim_create_autocmd({ 'InsertEnter', 'InsertLeave', 'BufEnter', 'BufWritePost', 'TextChanged', 'TextChangedI' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
