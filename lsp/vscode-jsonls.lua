-- npm i -g vscode-langservers-extracted
local capabilities = vim.lsp.protocol.make_client_capabilities()
return {
  cmd = { 'vscode-json-language-server', '--stdio' },
  filetypes = { 'json', 'jsonc' },
  init_options = {
    provideFormatter = true,
  },
  capabilities = capabilities,
}
