return {
  {
    'folke/snacks.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      animate = {},
      bigfile = {},
      indent = {},
      notifier = {},
      notify = {},
      picker = {},
      scroll = {},
    },
    keys = {
      -- explorer
      {
        '<C-x>',
        function()
          Snacks.explorer()
        end,
        desc = "Explorer"
      },
      -- scratch
      {
        '<leader>,',
        function()
          Snacks.scratch()
        end,
        desc = 'Toggle scratch'
      },
      {
        '<leader>S',
        function()
          Snacks.scratch.select()
        end,
        desc = 'Select scratch buffer'
      },
      -- Top Pickers
      {
        '<leader><leader>',
        function()
          Snacks.picker.files()
        end,
        desc = 'find files',
      },
      {
        '<leader>,',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'buffers',
      },
      {
        '<leader>/',
        function()
          Snacks.picker.grep()
        end,
        desc = 'grep',
      },
      {
        '<leader>:',
        function()
          Snacks.picker.command_history()
        end,
        desc = 'command history',
      },
      -- find
      {
        '<leader>fc',
        function()
          Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = 'config files',
      },
      {
        '<leader>ff',
        function()
          Snacks.picker.files()
        end,
        desc = 'find files',
      },
      {
        '<leader>fg',
        function()
          Snacks.picker.git_files()
        end,
        desc = 'find git files',
      },
      {
        '<leader>fr',
        function()
          Snacks.picker.recent()
        end,
        desc = 'recents',
      },
      -- git
      {
        '<leader>gb',
        function()
          Snacks.picker.git_branches()
        end,
        desc = 'git branches',
      },
      {
        '<leader>gl',
        function()
          Snacks.picker.git_log()
        end,
        desc = 'git log',
      },
      {
        '<leader>gL',
        function()
          Snacks.picker.git_log_line()
        end,
        desc = 'git log line',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = 'git status',
      },
      {
        '<leader>gS',
        function()
          Snacks.picker.git_stash()
        end,
        desc = 'git stash',
      },
      {
        '<leader>gd',
        function()
          Snacks.picker.git_diff()
        end,
        desc = 'git diff (hunks)',
      },
      {
        '<leader>gf',
        function()
          Snacks.picker.git_log_file()
        end,
        desc = 'git log file',
      },
      -- Grep
      {
        '<leader>sb',
        function()
          Snacks.picker.lines()
        end,
        desc = 'buffer lines',
      },
      {
        '<leader>sB',
        function()
          Snacks.picker.grep_buffers()
        end,
        desc = 'grep open buffers',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep()
        end,
        desc = 'grep',
      },
      {
        '<leader>sw',
        function()
          Snacks.picker.grep_word()
        end,
        desc = 'visual selection or word',
        mode = { 'n', 'x' },
      },
      -- search
      {
        '<leader>s"',
        function()
          Snacks.picker.registers()
        end,
        desc = 'registers',
      },
      {
        '<leader>s/',
        function()
          Snacks.picker.search_history()
        end,
        desc = 'search history',
      },
      {
        '<leader>sa',
        function()
          Snacks.picker.autocmds()
        end,
        desc = 'autocmds',
      },
      {
        '<leader>sc',
        function()
          Snacks.picker.command_history()
        end,
        desc = 'command history',
      },
      {
        '<leader>sC',
        function()
          Snacks.picker.commands()
        end,
        desc = 'commands',
      },
      {
        '<leader>sd',
        function()
          Snacks.picker.diagnostics()
        end,
        desc = 'diagnostics',
      },
      {
        '<leader>sD',
        function()
          Snacks.picker.diagnostics_buffer()
        end,
        desc = 'buffer diagnostics',
      },
      {
        '<leader>sj',
        function()
          Snacks.picker.jumps()
        end,
        desc = 'jumps',
      },
      {
        '<leader>sl',
        function()
          Snacks.picker.loclist()
        end,
        desc = 'location list',
      },
      {
        '<leader>sm',
        function()
          Snacks.picker.marks()
        end,
        desc = 'marks',
      },
      {
        '<leader>sM',
        function()
          Snacks.picker.man()
        end,
        desc = 'man pages',
      },
      {
        '<leader>sp',
        function()
          Snacks.picker.lazy()
        end,
        desc = 'plugin specs',
      },
      {
        '<leader>sq',
        function()
          Snacks.picker.qflist()
        end,
        desc = 'quickfix',
      },
      {
        '<leader>sR',
        function()
          Snacks.picker.resume()
        end,
        desc = 'resume',
      },
      {
        '<leader>su',
        function()
          Snacks.picker.undo()
        end,
        desc = 'undo history',
      },
      -- LSP
      {
        '<leader>cd',
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = 'goto definition',
      },
      {
        'gD',
        function()
          Snacks.picker.lsp_declarations()
        end,
        desc = 'goto declaration',
      },
      {
        '<leader>cr',
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = 'references',
      },
      {
        'gI',
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = 'goto implementation',
      },
      {
        'gy',
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = 'goto type definition',
      },
      {
        '<leader>ss',
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = 'lsp symbols',
      },
      {
        '<leader>sS',
        function()
          Snacks.picker.lsp_workspace_symbols()
        end,
        desc = 'lsp workspace symbols',
      },
    },
  },
}
