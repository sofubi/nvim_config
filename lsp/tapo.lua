-- cargo install --features lsp --locked taplo-cli
return {
  cmd = { 'taplo', 'lsp', 'stdio' },
  filetypes = { 'toml' },
  root_markers = { '' },
}
