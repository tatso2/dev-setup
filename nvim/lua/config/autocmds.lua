-- Commenting out the majority until native auto completion becomes usable
-- -- LSP configuration migration to nvim 0.11
-- vim.api.nvim_create_autocmd("LspAttach", {
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

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local keymap = vim.keymap
		local opts = { buffer = event.buf }

		opts.desc = "Show LSP references"
		keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

		opts.desc = "Show definition"
		keymap.set("n", "gd", vim.lsp.buf.definition, opts)

		opts.desc = "Go to declaration"
		keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

		opts.desc = "Show line diagnostics"
		keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
	end,
})

-- Customising diagnostics
vim.diagnostic.config({
	underline = false,
	float = { border = "rounded" },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✖",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "󰠠",
			[vim.diagnostic.severity.INFO] = "",
		},
		texthl = {
			[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
			[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
			[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
			[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})

-- Enable rounded borders in floating windows
-- only valid from vim 0.11
vim.o.winborder = "rounded"
