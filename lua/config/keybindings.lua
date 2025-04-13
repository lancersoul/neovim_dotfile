local map = vim.api.nvim_set_keymap
local maps = vim.keymap.set
local opt = {noremap = true, silent = true }
--设置leader键
vim.g.mapleader = ' '
--设置normal模式下的快捷键
map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opt)
map('n', '<C-b>', '<Cmd>ToggleTerm<CR>', opt)
map('n', '<leader>h', '<Cmd> wincmd h <CR>', opt)
map('n', '<leader>j', '<Cmd> wincmd j <CR>', opt)
map('n', '<leader>k', '<Cmd> wincmd k <CR>', opt)
map('n', '<leader>l', '<Cmd> wincmd l <CR>', opt)
-- 设置Lsp所需的快捷键
maps('n', '<leader>e', vim.diagnostic.open_float, opt)
maps('n', 'gD', vim.lsp.buf.declaration, opt)
maps('n', 'gd', vim.lsp.buf.definition, opt)
maps("n", "<leader>f", function()
vim.lsp.buf.format({ async = true })
end, opt)
maps('n', '<leader>r', vim.lsp.buf.rename, opt)
--设置terminal模式下的快捷键
map('t', '<C-b>', '<Cmd>ToggleTerm<CR>', opt)
map('t', '<ESC>', '<C-\\><C-n>', opt)
map('t', '<leader>h', '<Cmd> wincmd h <CR>', opt)
map('t', '<leader>j', '<Cmd> wincmd j <CR>', opt)
map('t', '<leader>k', '<Cmd> wincmd k <CR>', opt)
map('t', '<leader>l', '<Cmd> wincmd l <CR>', opt)
