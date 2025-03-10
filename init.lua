vim.loader.enable()

vim.g.mapleader = ' '

vim.o.laststatus = 0
vim.o.showmode = false
vim.o.ruler = false
vim.o.shortmess = 'WIFsc'

vim.o.splitbelow = true
vim.o.splitkeep = 'screen'
vim.o.splitright = true

vim.o.colorcolumn = '120'
vim.o.textwidth = 119
vim.o.wrap = false

vim.o.foldcolumn = '1'
vim.o.number = true
vim.o.numberwidth = 1
vim.o.relativenumber = true
vim.o.signcolumn = 'yes:1'

vim.o.list = true
vim.opt.fillchars = {
  eob = ' ',
  fold = ' ',
  foldopen = ' ',
  foldsep = ' ',
  foldclose = ' ',
}
vim.opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}

vim.o.pumheight = 10
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

vim.o.scrolloff = 3
vim.o.sidescroll = 1

vim.o.title = true
vim.o.titlestring = [[%{&modified?'● ':''}%{empty(expand('%:t'))?'nvim':expand('%:t')}]]

vim.o.formatoptions = 'cqnj'

vim.o.gdefault = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = 'split'
vim.o.smartcase = true

vim.o.expandtab = true
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = -1
vim.o.tabstop = 4

vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldtext = ''

vim.o.spell = true
vim.o.spellsuggest = '10'
vim.opt.spelloptions = { 'camel', 'noplainbuffer' }

vim.o.autowrite = true
vim.o.undofile = true
vim.o.exrc = true
vim.o.secure = true

vim.o.shellcmdflag = '-Nc'
vim.o.timeoutlen = 600
vim.o.updatetime = 100
vim.opt.suffixes = { '.swp', '.bak', '.pyc', '.out', '.aux', '.bbl', '.blg' }

vim.o.concealcursor = 'nc'
vim.o.conceallevel = 2

vim.opt.mouse = 'a'

vim.opt.cursorline = true
vim.opt.updatetime = 250

vim.opt.timeoutlen = 500

vim.o.grepprg = [[rg --glob "!.git" --no-heading --vimgrep --follow $*]]
vim.opt.grepformat = vim.opt.grepformat ^ { '%f:%l:%c:%m' }

vim.o.clipboard = 'unnamedplus'

if vim.fn.has 'mac' == 1 then
  vim.g.python3_host_prog = '/usr/local/bin/python3'
else
  vim.g.python3_host_prog = '/usr/bin/python3'
end

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim
    .system({
      'git',
      'clone',
      '--filter=blob:none',
      '--branch=stable',
      'https://github.com/folke/lazy.nvim.git',
      lazypath,
    })
    :wait()
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- always detect tabstop/shiftwidth
  'tpope/vim-sleuth',
  spec = {
    { import = 'plugins' },
  },
  default = {
    lazy = true,
  },
  change_detection = {
    notify = false,
  },
  install = {
    colorscheme = { 'melange' },
  },
}

require 'rc.remaps'
require 'rc.autocommands'
