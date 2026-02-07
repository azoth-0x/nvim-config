-- ~/.config/nvim/lua/core/keymaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

map('n', '<C-Up>', '<cmd>resize +2<CR>', opts)
map('n', '<C-Down>', '<cmd>resize -2<CR>', opts)
map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', opts)
map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', opts)

map('', '<Up>', 'k', opts)
map('', '<Down>', 'j', opts)
map('', '<Left>', 'h', opts)
map('', '<Right>', 'l', opts)

map('v', 'J', ":m '>+1<CR>gv=gv", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)

map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

map('x', '<leader>p', '"_dP', opts)

map('n', '<leader>w', '<cmd>w<CR>', opts)
map('n', '<leader>q', '<cmd>q<CR>', opts)
map('n', '<leader>Q', '<cmd>qa!<CR>', opts)
map({ 'n', 'i', 'v' }, '<C-s>', '<cmd>wa<CR>', opts)

map('n', '<leader>h', '<cmd>nohlsearch<CR>', opts)

map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Alternar explorador' })
map('n', '<leader>o', '<cmd>NvimTreeFocus<CR>', { desc = 'Focar explorador' })

map('n', '<leader>t', '<cmd>split | term<CR>', opts)
map('t', '<Esc>', '<C-\\><C-n>', opts)

map('n', '<leader>cg', '<cmd>ClangdSwitchSourceHeader<CR>', { desc = 'Alternar entre .h/.cpp' })
map('n', '<leader>cf', '<cmd>ClangFormat<CR>', { desc = 'Formatar com clang-format' })
map('n', '<leader>ct', '<cmd>ClangdTypeHierarchy<CR>', { desc = 'Hierarquia de tipos' })
map('n', '<leader>cr', '<cmd>ClangdAST<CR>', { desc = 'Ver AST' })

map('n', '<leader>cb', '<cmd>CMakeBuild<CR>', { desc = 'Build projeto' })
map('n', '<leader>cc', '<cmd>CMakeConfigure<CR>', { desc = 'Configurar CMake' })
map('n', '<leader>cr', '<cmd>CMakeRun<CR>', { desc = 'Executar projeto' })
map('n', '<leader>cd', '<cmd>CMakeDebug<CR>', { desc = 'Debug projeto' })
