return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      local leap = require 'leap'
      local leap_user = require 'leap.user'
      leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      leap_user.set_repeat_keys('<enter>', '<backspace>')
      leap.opts.preview_filter = function(ch0, ch1, ch2)
        return not (ch1:match '%s' or ch0:match '%w' and ch1:match '%w' and ch2:match '%w')
      end
      vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
    end,
  },
  {
    'ggandor/flit.nvim',
    lazy = false,
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        -- A string like "nv", "nvo", "o", etc.
        labeled_modes = 'nvo',
        -- Repeat with the trigger key itself.
        clever_repeat = true,
        multiline = true,
        -- Like `leap`s similar argument (call-specific overrides).
        -- E.g.: opts = { equivalence_classes = {} }
        opts = {
          equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' },
        },
      }
    end,
  },
}
