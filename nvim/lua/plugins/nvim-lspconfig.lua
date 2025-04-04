return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- local lspconfig = require("lspconfig")
		-- local cmp_nvim_lsp = require("cmp_nvim_lsp")
		-- local mason_lsp_config = require("mason-lspconfig")

		-- Show diagnostic message only in the current line
		-- With borders but no underline
		vim.diagnostic.config({
			underline = false,
			virtual_lines = { current_line = true },
			float = { border = "rounded" },
		})

		-- Add borders around LSP messages
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "single",
			title = "Info",
		})
		vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
			border = "single",
		})

		-- vim.api.nvim_create_autocmd("LspAttach", {
		-- 	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		-- 	callback = function(event)
		-- 		local client = vim.lsp.get_client_by_id(event.data.client_id)
		-- 		if client:supports_method("textDocument/completion") then
		-- 			vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
		-- 		end
		--
		-- 		local keymap = vim.keymap
		-- 		local opts = { buffer = event.buf }
		--
		-- 		opts.desc = "Show LSP references"
		-- 		keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
		--
		-- 		opts.desc = "Show documentation for what is under cursor"
		-- 		keymap.set("n", "K", vim.lsp.buf.hover, opts)
		--
		-- 		opts.desc = "Show definition"
		-- 		keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		--
		-- 		opts.desc = "Go to declaration"
		-- 		keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		--
		-- 		opts.desc = "Show line diagnostics"
		-- 		keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
		-- 	end,
		-- })
		--
		-- local capabilities = cmp_nvim_lsp.default_capabilities()
		-- local signs = { Error = "✖", Warn = "", Hint = "󰠠", Info = "" }
		-- for type, icon in pairs(signs) do
		-- 	local hl = "DiagnosticSign" .. type
		-- 	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		-- end

		-- To allow automatic set up for LSP servers installed vis mason.nvim
		-- without having to restart nvim. Make sure not to set up lspconfig
		-- mason_lsp_config.setup_handlers({
		-- 	-- Default handler for a server without a deciated handler
		-- 	function(server_name)
		-- 		lspconfig[server_name].setup({
		-- 			capabilities = capabilities,
		-- 		})
		-- 	end,
		-- 	["lua_ls"] = function()
		-- 		lspconfig["lua_ls"].setup({
		-- 			capabilities = capabilities,
		-- 			settings = {
		-- 				Lua = {
		-- 					diagnostics = {
		-- 						globals = { "vim" },
		-- 					},
		-- 				},
		-- 			},
		-- 		})
		-- 	end,
		-- 	["emmet_ls"] = function()
		-- 		lspconfig["emmet_ls"].setup({
		-- 			capabilities = capabilities,
		-- 			filetypes = {
		-- 				"html",
		-- 				"javascriptreact",
		-- 				"javascript",
		-- 				"typescriptreact",
		-- 				"css",
		-- 				"sass",
		-- 				"scss",
		-- 				"less",
		-- 				"svelte",
		-- 				"vue",
		-- 			},
		-- 		})
		-- 	end,
		-- 	["ts_ls"] = function()
		-- 		lspconfig["ts_ls"].setup({
		-- 			capabilities = capabilities,
		-- 			filetypes = {
		-- 				"javascript",
		-- 				"javascriptreact",
		-- 				"javascript.jsx",
		-- 				"typescript",
		-- 				"typescriptreact",
		-- 				"typescript.tsx",
		-- 				"vue",
		-- 			},
		-- 		})
		-- 	end,
		-- })

		-- Auto completion
	end,
}
