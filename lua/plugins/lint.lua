return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        markdown = { 'markdownlint' },
        python = { 'flake8' },
        sql = { 'sqlfluff' },
      }
      vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter', 'InsertEnter', 'InsertLeave' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end
  }
}
