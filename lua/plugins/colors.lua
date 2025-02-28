return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'soft'
      vim.g.gruvbox_material_foreground = 'mix'
      vim.g.gruvbox_material_spell_foreground = 'colored'
      vim.g.gruvbox_material_ui_contrast = 'high'
      vim.g.gruvbox_material_material_diagnostic_text_highlight = true
      vim.g.gruvbox_material_material_diagnostic_line_highlight = true
      vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
      vim.g.gruvbox_material_inlay_hints_background = 'dimmed'
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     vim.opt.termguicolors = true
  --
  --     require('gruvbox').setup {
  --       italic = {
  --         strings = false,
  --       },
  --       contrast = 'hard',
  --     }
  --
  --     vim.cmd.colorscheme 'gruvbox'
  --   end,
  -- },
}
