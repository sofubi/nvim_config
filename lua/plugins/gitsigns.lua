return {
  'lewis6991/gitsigns.nvim',
  event = { 'VeryLazy' },
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '!' },
    },
    on_attach = function(bufnr)
      local gitsigns = require 'gitsigns'

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then
          vim.cmd.normal { ']c', bang = true }
        else
          gitsigns.nav_hunk 'next'
        end
      end, { desc = 'jump to next git change' })

      map('n', '[c', function()
        if vim.wo.diff then
          vim.cmd.normal { '[c', bang = true }
        else
          gitsigns.nav_hunk 'prev'
        end
      end, { desc = 'jump to previous git change' })

      -- Actions
      -- visual mode
      map('v', '<leader>hs', function()
        gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'stage hunk' })
      map('v', '<leader>hr', function()
        gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'reset hunk' })
      -- normal mode
      map('n', '<leader>ghs', gitsigns.stage_hunk, {
        desc = 'stage hunk',
      })
      map('n', '<leader>ghr', gitsigns.reset_hunk, {
        desc = 'reset hunk',
      })
      map('n', '<leader>ghS', gitsigns.stage_buffer, {
        desc = 'stage buffer',
      })
      map('n', '<leader>ghR', gitsigns.reset_buffer, {
        desc = 'reset buffer',
      })
      map('n', '<leader>ghp', gitsigns.preview_hunk_inline, {
        desc = 'preview hunk inline',
      })
      map('n', '<leader>ghb', gitsigns.blame_line, {
        desc = 'blame line',
      })
      map('n', '<leader>ghd', gitsigns.diffthis, {
        desc = 'diff against index',
      })
      map('n', '<leader>ghD', function()
        gitsigns.diffthis '@'
      end, { desc = 'diff against last commit' })
      -- Toggles
      map('n', '<leader>gtb', gitsigns.toggle_current_line_blame)
    end,
  },
}
