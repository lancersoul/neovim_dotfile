---Nvim.tree要求
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
---使用行号
vim.wo.number = true
---使用相对行号
---在同时使用number和relativenumber的情况下，会在光标所在行显示绝对行号，其他行显示相对行号
vim.wo.relativenumber = true
-- 设置缩进为4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
---高亮所在行
vim.wo.cursorline = true
---使光标距离窗口一定行数
vim.opt.scrolloff = 5
---自动补全，但不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
---补全显示10行
vim.o.pumheight = 10
---使用系统剪切板
vim.o.clipboard = 'unnamedplus'
---导入lazy.nvim
require("config.lazy")
require("colorscheme")
require("config.keybindings")
