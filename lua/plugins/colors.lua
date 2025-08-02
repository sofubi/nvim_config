return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        term_colors = true,
        no_italic = true,
        integrations = {
          blink_cmp = {
            style = 'bordered',
          },
          diffview = true,
          gitsigns = true,
          gitgutter = true,
          markdown = true,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          neogit = true,
          treesitter = true,
          pounce = true,
          snacks = {
            enabled = true,
            indentscope_color = '',
          },
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
