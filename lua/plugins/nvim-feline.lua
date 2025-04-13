return {
	'famiu/feline.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		'lewis6991/gitsigns.nvim',
	},
	after = 'catppuccin',
	config = function ()
		local ctp_feline = require('catppuccin.groups.integrations.feline')

		ctp_feline.setup()

		require("feline").setup({
			components = ctp_feline.get(),
		})
		vim.opt.showmode = false
	end,
}
