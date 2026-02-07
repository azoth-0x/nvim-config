-- ~/.config/nvim/lua/core/autocmds.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Limpar highlights ao salvar
autocmd({ 'TextYankPost' }, {
  group = augroup('YankHighlight', { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Formatar ao salvar com LSP
autocmd('BufWritePre', {
  group = augroup('FormatOnSave', { clear = true }),
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

-- Manter cursor no último lugar ao reabrir arquivo
autocmd('BufReadPost', {
  group = augroup('RestoreCursor', { clear = true }),
  callback = function()
    if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.cmd('normal! g`"')
    end
  end,
})
