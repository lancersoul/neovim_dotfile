return{
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function ()
		vim.opt.termguicolors = true
		require("bufferline").setup{
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true
					}
				},
			}
		}
	end,
	}
