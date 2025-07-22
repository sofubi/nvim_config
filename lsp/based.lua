-- install basedpyright via pip
return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    'pyrightconfig.json',
    'pyproject.toml',
  },
  settings = {
    basedpyright = {
      analysis = {
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
}
