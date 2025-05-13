return{
	"akinsho/bufferline.nvim",
	after = 'catppuccin',
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function ()
		vim.opt.termguicolors = true
		require("bufferline").setup{
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						highlight = "Directory",
						separator = true
					}
				},
			}
		}
	end,
	}
