return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          blink_cmp = true,
          diffview = true,
          leap = true,
          markdown = true,
          neogit = true,
          copilot_vim = true,
          nvim_surround = true,
          snacks = {
            enabled = true,
            indent_scope_color = "",
          },
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
