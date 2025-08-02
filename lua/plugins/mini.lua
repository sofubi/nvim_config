-- local clue_setup = function()
--   local miniclue = require 'mini.clue'
--   miniclue.setup {
--     delay = 25,
--     triggers = {
--       -- Leader triggers
--       { mode = 'n', keys = '<Leader>' },
--       { mode = 'x', keys = '<Leader>' },
--
--       -- Built-in completion
--       { mode = 'i', keys = '<C-x>' },
--
--       -- `g` key
--       { mode = 'n', keys = 'g' },
--       { mode = 'x', keys = 'g' },
--
--       -- Marks
--       { mode = 'n', keys = "'" },
--       { mode = 'n', keys = '`' },
--       { mode = 'x', keys = "'" },
--       { mode = 'x', keys = '`' },
--
--       -- Registers
--       { mode = 'n', keys = '"' },
--       { mode = 'x', keys = '"' },
--       { mode = 'i', keys = '<C-r>' },
--       { mode = 'c', keys = '<C-r>' },
--
--       -- Window commands
--       { mode = 'n', keys = '<C-w>' },
--
--       -- `z` key
--       { mode = 'n', keys = 'z' },
--       { mode = 'x', keys = 'z' },
--
--       -- `[` key
--       { mode = 'n', keys = '[' },
--       { mode = 'x', keys = '[' },
--
--       -- `]` key
--       { mode = 'n', keys = ']' },
--       { mode = 'x', keys = ']' },
--     },
--
--     clues = {
--       -- Enhance this by adding descriptions for <Leader> mapping groups
--       miniclue.gen_clues.builtin_completion(),
--       miniclue.gen_clues.g(),
--       miniclue.gen_clues.marks(),
--       miniclue.gen_clues.registers(),
--       miniclue.gen_clues.windows(),
--       miniclue.gen_clues.z(),
--     },
--   }
-- end

local miniplug = function()
  local enabled = {
    ai = true,
    cursorword = true,
    hipatterns = true,
    icons = true,
    move = true,
    pairs = true,
  }
  local plugs = {}
  for k, v in pairs(enabled) do
    local conf = { 'echasnovski/mini.' .. k, version = false, config = v }
    table.insert(plugs, conf)
  end

  return plugs
end

return miniplug()
