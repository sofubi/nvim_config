-- brew install marksman
return {
  cmd = { 'marksman', 'server', '-v=5' },
  filetypes = { 'markdown', 'markdown.mdx' },
  root_markers = { '.marksman.toml', '.git' },
}
