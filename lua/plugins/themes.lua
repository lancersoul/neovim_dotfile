return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000,
	config = function ()
		require('catppuccin').setup({
			custom_highlights = function (colors)
				return {
					Pmenu = { bg = colors.none },
					PmenuExtra = { bg = colors.none },
					NormalFloat = { bg = colors.none },
				}
			end,
			integrations = {
				blink_cmp = true,
				mason = true,
				snacks = {enable = true},
			}
		})
	end
}
