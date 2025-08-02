return {
  {
    'olimorris/codecompanion.nvim',
    enabled = false,
    dependencies = {
      'j-hui/fidget.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'ravitemer/codecompanion-history.nvim',
      {
        'HakonHarnes/img-clip.nvim', -- Share images with the chat buffer
        event = 'VeryLazy',
        cmd = 'PasteImage',
        opts = {
          filetypes = {
            codecompanion = {
              prompt_for_file_name = false,
              template = '[Image]($FILE_PATH)',
              use_absolute_path = true,
            },
          },
        },
      },
    },
    init = function()
      vim.cmd [[cab cc CodeCompanion]]
      vim.cmd [[cab ccc CodeCompanionChat]]
      require('plugins.custom.spinner'):init()
    end,
    opts = {
      extensions = {
        history = {
          enabled = true,
          opts = {
            keymap = 'gh',
            save_chat_keymap = 'sc',
            auto_save = true,
            expiration_days = 0,
            picker = 'snacks',
            auto_generate_title = true,
            continue_last_chat = false,
            delete_on_clearing_chat = false,
            dir_to_save = vim.fn.stdpath 'data' .. '/codecompanion-history',
            enable_logging = false,
          },
        },
      },
      adapters = {
        copilot = function()
          return require('codecompanion.adapters').extend('copilot', {
            schema = {
              model = {
                default = 'gpt-4.1',
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'copilot',
          roles = {
            user = 'sofubi',
          },
          keymaps = {
            send = {
              modes = {
                i = { '<C-CR>', '<C-s>' },
              },
            },
            completion = {
              modes = {
                i = '<C-x>',
              },
            },
          },
          slash_commands = {
            ['buffer'] = {
              keymaps = {
                modes = {
                  i = '<C-b>',
                },
              },
            },
            ['fetch'] = {
              keymaps = {
                modes = {
                  i = '<C-f>',
                },
              },
            },
            ['help'] = {
              opts = {
                max_lines = 1000,
              },
            },
            ['image'] = {
              keymaps = {
                modes = {
                  i = '<C-i>',
                },
              },
              opts = {
                dirs = { '~/Documents/Screenshots' },
              },
            },
          },
          tools = {
            opts = {
              auto_submit_success = false,
              auto_submit_errors = false,
            },
          },
        },
        inline = { adapter = 'copilot' },
      },
      display = {
        action_palette = {
          provider = 'default',
        },
        chat = {
          -- show_references = true,
          -- show_header_separator = false,
          -- show_settings = false,
        },
        diff = {
          provider = 'mini_diff',
        },
      },
      opts = {
        log_level = 'DEBUG',
      },
    },
  },
  {
    'zbirenbaum/copilot.lua', -- AI programming
    enabled = false,
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        copilot_node_command = vim.fn.expand '$FNM_DIR' .. '/aliases/latest/bin/node',
        panel = { enabled = false },
        suggestion = {
          auto_trigger = true, -- Suggest as we start typing
          keymap = {
            accept_word = '<C-l>',
            accept_line = '<C-j>',
          },
        },
      }
    end,
    keys = {
      {
        '<C-a>',
        function()
          require('copilot.suggestion').accept()
        end,
        desc = 'Copilot: Accept suggestion',
        mode = { 'i' },
      },
      {
        '<C-x>',
        function()
          require('copilot.suggestion').dismiss()
        end,
        desc = 'Copilot: Dismiss suggestion',
        mode = { 'i' },
      },
      -- {
      --   '<C-\\>',
      --   function()
      --     require('copilot.panel').open()
      --   end,
      --   desc = 'Copilot: Show panel',
      --   mode = { 'n', 'i' },
      -- },
    },
  },
}
