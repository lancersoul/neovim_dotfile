return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
	"nvim-tree/nvim-web-devicons",
	},
	config = function()
	require("nvim-tree").setup {
	sort_by = "case_sensitive",
	hijack_cursor = true,
	actions = {
		use_system_clipboard = true,
	}
    }
  end,
}
