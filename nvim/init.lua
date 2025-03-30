require("config.lazy")

-- require configs
require("config.options")
require("config.autocmds")
require("config.keymaps")

-- New from Nvim 0.11
vim.lsp.enable({
	"clangd", -- C, C++
	"cmakels",
	"docker_compose_ls", -- docker compose
	"dockerls", -- docker
	"emmetls",
	"gopls", -- Go
	"luals", -- Lua
	"pythonls", -- Python
	"rust-analyzer", -- Rust
	"tailwindcssls", -- TailwindCSS
	"tsls", -- TypeScript, JavaScript
})
