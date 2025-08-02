return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = false,
    branch = 'regexp',
    config = function()
      local function shorter_name(filename)
        return filename:gsub(os.getenv 'HOME', '~'):gsub('/bin/python', '')
      end
      require('venv-selector').setup {
        settings = {
          options = {
            on_telescope_result_callback = shorter_name,
            debug = true,
            notify_user_on_venv_activation = false,
          },
          search = {
            code_venvs = {
              command = "fd '/bin/python$' ~/Code --full-path -IHL",
            },
          },
        },
      }
    end,
    opts = {},
    keys = {
      { '<leader>cv', '<cmd>VenvSelect<cr>', ft = 'python', desc = 'select venv' },
    },
  },
  {
    'cachebag/nvim-tcss',
    config = true,
  },
}
