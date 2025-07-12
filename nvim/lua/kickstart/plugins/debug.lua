-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
	-- NOTE: Yes, you can install new plugins here!
	"mfussenegger/nvim-dap",
	-- NOTE: And you can specify dependencies as well
	dependencies = {
		-- Creates a beautiful debugger UI
		-- "rcarriga/nvim-dap-ui",

		-- Required dependency for nvim-dap-ui
		-- "nvim-neotest/nvim-nio",

		-- Installs the debug adapters for you
		-- "williamboman/mason.nvim",
		-- "jay-babu/mason-nvim-dap.nvim",

		"theHamsta/nvim-dap-virtual-text",
		-- Add your own debuggers here
		"leoluz/nvim-dap-go",
	},
	keys = {
		-- Basic debugging keymaps, feel free to change to your liking!
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			desc = "Debug: Start/Continue",
		},
		{
			"<F1>",
			function()
				require("dap").step_into()
			end,
			desc = "Debug: Step Into",
		},
		{
			"<F2>",
			function()
				require("dap").step_over()
			end,
			desc = "Debug: Step Over",
		},
		{
			"<F3>",
			function()
				require("dap").step_out()
			end,
			desc = "Debug: Step Out",
		},
		{
			"<leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Debug: Toggle Breakpoint",
		},
		{
			"<leader>B",
			function()
				require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end,
			desc = "Debug: Set Breakpoint",
		},
	},
	config = function()
		local dap = require("dap")
		local widgets = require("dap.ui.widgets")
		local dap_ui = function(widget)
			return function()
				widgets.centered_float(widget)
			end
		end

		vim.keymap.set("n", "<leader>ds", dap_ui(widgets.scopes), { desc = "Dap: scopes" })
		vim.keymap.set("n", "<leader>df", dap_ui(widgets.frames), { desc = "Dap: frames" })
		vim.keymap.set("n", "<leader>de", dap_ui(widgets.exression), { desc = "Dap: expression" })
		vim.keymap.set("n", "<leader>dt", dap_ui(widgets.threads), { desc = "Dap: threads" })
		vim.keymap.set("n", "<leader>dS", dap_ui(widgets.sessions), { desc = "Dap: sessions" })
		vim.keymap.set("n", "<leader>dr", function()
			dap.repl.toggle()
			vim.cmd("wincmd p")
			local filetype = vim.api.nvim_get_option_value("filetype", { buf = 0 })
			if filetype == "dap-repl" then
				vim.cmd("startinsert")
			end
		end, { desc = "Dap: repl toggle" })

		-- Change breakpoint icons
		-- vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
		-- vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
		-- local breakpoint_icons = vim.g.have_nerd_font
		--     and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '' }
		--   or { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '⭔' }
		-- for type, icon in pairs(breakpoint_icons) do
		--   local tp = 'Dap' .. type
		--   local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
		--   vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
		-- end

		require("nvim-dap-virtual-text").setup()

		-- Install golang specific config
		require("dap-go").setup({
			delve = {
				-- On Windows delve must be run attached or it crashes.
				-- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
				detached = vim.fn.has("win32") == 0,
			},
			dap_configurations = {
				{
					type = "go",
					name = "Attach remote",
					mode = "remote",
					request = "attach",
					port = 23456,
				},
			},
		})
	end,
}

-- vim: ts=4 sts=4 sw=4 et
