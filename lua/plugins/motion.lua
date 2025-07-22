return {
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      local leap = require('leap')
      local leap_user = require('leap.user')
      leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      leap.opts.preview_filter =
          function(ch0, ch1, ch2)
            return not (
              ch1:match('%s') or
              ch0:match('%w') and ch1:match('%w') and ch2:match('%w')
            )
          end
      leap_user.set_repeat_keys('<enter>', '<backspace>', { relative_directions = false, modes = { 'n', 'x', 'o' } })
      vim.keymap.set({ "n" }, "S", "<Plug>(leap-backward-to)")
      vim.keymap.set({ "n" }, "s", "<Plug>(leap-forward-to)")

      vim.keymap.set({ "o", "x" }, "Z", "<Plug>(leap-backward-till)")
      vim.keymap.set({ "o", "x" }, "z", "<Plug>(leap-forward-till)")
    end
  },
  {
    "ggandor/flit.nvim",
    lazy = false,
    config = function()
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        labeled_modes = "nvo",
        clever_repeat = true,
        multiline = false,
        opts = {
          equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
        }
      }
    end
  }
}
