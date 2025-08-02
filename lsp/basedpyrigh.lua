-- install pyright via pip
local roots = {
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
  '.git',
}

local function get_python_path()
  if vim.env.VIRTUAL_ENV then
    return vim.fs.joinpath(vim.env.VIRTUAL_ENV, '/bin/', 'python')
  end

  local root_dir = vim.fs.root(vim.fn.getcwd(), roots)

  if vim.uv.fs_stat(root_dir .. '/.venv') then
    return vim.fs.joinpath(root_dir, '.venv', 'bin', 'python')
  end

  if vim.uv.fs_stat(root_dir .. '/venv') then
    return vim.fs.joinpath(root_dir, 'venv', 'bin', 'python')
  end

  return nil
end

return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = roots,
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = 'openFilesOnly',
        useLibraryCodeForTypes = true,
      },
    },
  },
  before_init = function(_, config)
    local python_path = get_python_path()
    if python_path ~= nil then
      vim.tbl_deep_extend('force', config.settings, {
        python = {
          pythonPath = python_path,
        },
      })
    end
  end,
}
