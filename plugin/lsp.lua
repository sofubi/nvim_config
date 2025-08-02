vim.keymap.set('n', '<leader>D', vim.diagnostic.setloclist)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>ch', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
vim.keymap.set('n', '<leader>cl', vim.diagnostic.open_float)
-- vim.keymap.set('n', 'gO', function ()
-- 	vim.lsp.buf.document_symbol({ loclist = true })
-- end)

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      if client:supports_method 'textDocument/foldingRange' then
        local win = vim.api.nvim_get_current_win()
        vim.wo[win][0].foldmethod = 'expr'
        vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
      end
      if client:supports_method 'textDocument/formatting' then
        -- Format the current buffer on save
        vim.api.nvim_create_autocmd('BufWritePre', {
          buffer = args.buf,
          callback = function()
            vim.lsp.buf.format { bufnr = args.buf, id = client.id }
          end,
        })
      end
      local blink_caps = require('blink.cmp').get_lsp_capabilities(client.capabilities, true)
      client.capabilities = vim.tbl_deep_extend('force', client.capabilities, blink_caps)
    end
  end,
})
vim.api.nvim_create_autocmd('LspDetach', { command = 'setl foldexpr<' })

vim.lsp.config('*', {
  root_markers = { '.git' },
})

vim.lsp.enable {
  'basedpyrigh',
  'clang_d',
  'jq_ls',
  'luals',
  'marksmand',
  'rufff',
  'tapo',
  'tsls',
  'vscode-cssls',
  'vscode-eslintls',
  'vscode-htmlls',
  'vscode-jsonls',
  'yamls',
}
