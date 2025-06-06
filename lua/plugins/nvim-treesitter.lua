return{
	"nvim-treesitter/nvim-treesitter",
	build=':TSUpdate',
	config=function ()
		local configs = require('nvim-treesitter.configs')
		configs.setup({
			ensure_installed = {'json', 'lua', 'luadoc', 'markdown_inline', 'matlab', 'powershell', 'python', 'vim', 'vimdoc', 'xml'},
			sync_install = false,
			auto_install = true,
			highlight = {enable = true},
			indent = {enable = true},
		})
	end
}
