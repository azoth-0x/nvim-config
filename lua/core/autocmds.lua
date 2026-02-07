-- ~/.config/nvim/lua/core/autocmds.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd({ 'TextYankPost' }, {
  group = augroup('YankHighlight', { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

autocmd('BufWritePre', {
  group = augroup('FormatOnSave', { clear = true }),
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

autocmd('BufReadPost', {
  group = augroup('RestoreCursor', { clear = true }),
  callback = function()
    if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.cmd('normal! g`"')
    end
  end,
})
