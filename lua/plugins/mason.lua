return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
	},
    opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			},
		},
	},
    config = function (_, opts)
        require("mason").setup(opts)
        local registry = require "mason-registry"

		local function setup(name, config)
			local success, package = pcall(registry.get_package, name )
			if success and not package:is_installed() then
				package:install()
			end

			local lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities()
			require("lspconfig")[lsp].setup(config)
			-- vim.lsp.config(lsp, config)
		end

		local servers = {
			["lua-language-server"] = {
				on_init = function(client)
					if client.workspace_folders then
						local path = client.workspace_folders[1].name
						if path ~= vim.fn.stdpath('config') and vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
							return
						end
					end

					client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
						runtime = {
							-- Tell the language server which version of Lua you're using
							-- (most likely LuaJIT in the case of Neovim)
							version = 'LuaJIT'
						},
						-- Make the server aware of Neovim runtime files
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME
								-- Depending on the usage, you might want to add additional paths here.
								-- "${3rd}/luv/library"
								-- "${3rd}/busted/library",
							}
							-- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
							-- library = vim.api.nvim_get_runtime_file("", true)
						}
					})
				end,
				settings = {
					Lua = {}
				}
			},
			["marksman"] = {},
			["texlab"] = {},
			["python-lsp-server"] = {},
			["bash-language-server"] = {},
			["cmake-language-server"] = {},
			-- ["pyright"] = {},
		}

		for server, config in pairs(servers) do
			setup(server, config)
		end

        vim.cmd("LspStart")
		vim.diagnostic.config({
			update_in_insert = true,
			virtual_text = true,
		})
    end,
}
