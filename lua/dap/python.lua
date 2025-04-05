local dap = require('dap')
local dapui = require('dapui')
dap.adapters.python = {
	type = 'executable',
	command = 'python3',
	args = { '-m', 'debugpy.adapter' },
}
dap.configurations.python = {
	{
		type = 'python',
		request = 'launch',
		name = 'launch file',
		program = '${file}',
		pythonPath = function()
			return 'python3'
		end
	},
}

dapui.setup({})

dap.listeners.after.event_initialized['dapui_config'] = function()
	dapui.open({})
end

dap.listeners.before.event_terminated['dapui_config'] = function()
	dapui.close({})
end

dap.listeners.before.event_exited['dapui_config'] = function()
	dapui.close({})
end
-- 设置DAP keymap。
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, buffer = bufnr }
map('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>", opts)
map('n', '<F10>', "<cmd>lua require'dap'.step_over()<CR>", opts)
map('n', '<F11>', "<cmd>lua require'dap'.step_into()<CR>", opts)
map('n', '<F12>', "<cmd>lua require'dap'.step_over()<CR>", opts)
map('n', '<F9>', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
