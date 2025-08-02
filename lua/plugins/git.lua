return {
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
  },
  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'Gdiffsplit', 'Gvdiffsplit', 'Gread', 'Gwrite', 'Ggrep', 'Glgrep', 'GMove', 'GDelete', 'GBrowse' },
  },
  {
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
        end, { desc = 'next git change' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'previous git change' })

        -- Actions
        -- visual mode
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'stage hunk' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'reset hunk' })
        -- normal mode
        map('n', '<leader>hs', gitsigns.stage_hunk, {
          desc = 'stage hunk',
        })
        map('n', '<leader>hr', gitsigns.reset_hunk, {
          desc = 'reset hunk',
        })
        map('n', '<leader>hS', gitsigns.stage_buffer, {
          desc = 'stage buffer',
        })
        map('n', '<leader>hR', gitsigns.reset_buffer, {
          desc = 'reset buffer',
        })
        map('n', 'yhp', gitsigns.preview_hunk_inline, {
          desc = 'preview hunk inline',
        })
        map('n', 'yoD', function()
          gitsigns.diffthis '@'
        end, { desc = 'diff against last commit' })
        -- Toggles
        map('n', 'ytb', gitsigns.toggle_current_line_blame)
      end,
    },
  },
}
