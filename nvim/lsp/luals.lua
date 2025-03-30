return {
	cmd = { "lua-language-server" },
	root_markers = { ".luarc.json", ".luarc.jsonc" },
	filetypes = { "lua" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			signatureHelp = { enabled = true },
			hint = {
				enable = true,
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
		},
	},
}
