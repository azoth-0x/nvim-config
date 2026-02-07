-- ~/.config/nvim/lua/core/options.lua
local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.mouse = 'a'
opt.mousefocus = true
opt.clipboard = 'unnamedplus'
opt.splitright = true
opt.splitbelow = true
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.shortmess:append('I')

opt.lazyredraw = true
opt.updatetime = 300

opt.syntax = 'on'
opt.fileencoding = 'utf-8'
opt.completeopt = { 'menuone', 'noselect' }
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
