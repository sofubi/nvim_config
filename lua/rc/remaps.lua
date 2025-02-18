local function cmd(command)
  return function()
    vim.cmd(command)
  end
end

local nmap = function(lhs, rhs, opts)
  vim.keymap.set('n', lhs, rhs, opts)
end

local vmap = function(lhs, rhs, opts)
  vim.keymap.set('v', lhs, rhs, opts)
end

local tmap = function(lhs, rhs, opts)
  vim.keymap.set('t', lhs, rhs, opts)
end

nmap('<leader>O', '[<Space>', { remap = true })
nmap('<leader>o', ']<Space>', { remap = true })

-- move highlighted text and auto indent
vmap('J', ":m '>+1<CR>gv=gv")
vmap('K', ":m '<-2<CR>gv=gv")

-- keep selection while visually indenting
vmap('<', '<gv')
vmap('>', '>gv')

-- resize windows
nmap('<S-Up>', cmd 'resize +2')
nmap('<S-Down>', cmd 'resize -2')
nmap('<S-Left>', cmd 'vertical resize +2')
nmap('<S-Right>', cmd 'vertical resize -2')

-- use comma to switch windows
nmap(',', '<c-w>')

-- populate jumplist with relative jumps, otherwise move by wrapped line
nmap('k', [[(v:count ? "m'" . v:count : "g") . "k"]], { expr = true })
nmap('j', [[(v:count ? "m'" . v:count : "g") . "j"]], { expr = true })

-- negate boolean values
nmap('!', '<Plug>(Negate)')

-- source current
nmap('R', cmd 'source %')

-- easily exit term
tmap('<Esc><Esc>', '<C-\\><C-n>')

-- clear search highlights
nmap('<Esc>', '<cmd>nohlsearch<CR>')
