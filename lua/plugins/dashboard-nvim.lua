return{
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function ()
		require('dashboard').setup {
			theme = 'hyper',
			config = {
				header = {
					'███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
					'████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
					'██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
					'██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
					'██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
					'╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
				}
			}
		}
	end,
	denpendencies = {'nvim-tree/nvim-web-devicons'}
}
