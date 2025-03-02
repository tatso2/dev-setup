return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"clangd", -- c++
				"cmake", -- cmake for cpp
				"dockerls", -- dockerfile
				"docker_compose_language_service", -- docker compose
				"emmet_ls",
				"gopls", -- Go
				"pyright", -- Python
				"rust_analyzer", -- Rust
				"html", -- html
				"lua_ls", -- lua
				"tailwindcss", -- tailwindcss
			},
		})

		-- Formatting and linting
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"ruff", -- python formatter
				"shfmt", -- bash formatter,
				"goimports", -- Go formatter,
				"gofumpt", -- Go formatter,
				"pylint", -- python linter
				"eslint_d", -- web dev related linter
			},
		})
	end,
}
