return {
  {
    'savq/melange-nvim',
    dependencies = {
      'rktjmp/lush.nvim',
    },
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.termguicolors = true

      local function melange_no_variants()
        vim.g.melange_enable_font_variants = 0
        require 'lush'
        require('melange.build').build()
      end

      melange_no_variants()
      vim.cmd.colorscheme 'melange'
    end,
  },
}
