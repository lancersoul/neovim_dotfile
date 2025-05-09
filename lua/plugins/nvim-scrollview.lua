return {
    'dstein64/nvim-scrollview',
	config = function ()
		require("scrollview").setup({
			excluded_filetypes = {'nerdtree'},
			winblend_gui = 50,
			base = 'right'
		})
	end
}
