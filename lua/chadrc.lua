---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'ayu_dark'}

-- Use Treesitter for folding
 vim.o.foldmethod = 'expr'
 vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

 -- Set a high foldlevel to prevent folding everything on startup
 vim.o.foldlevel = 99
 vim.o.foldenable = true -- Enable folding by default
 return M
