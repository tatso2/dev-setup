return {
	cmd = {
		"clangd",
		"--background-index",
	},
	root_makers = {
		".clangd",
		"compile_commands.json",
		"compile_flags.txt",
	},
	filetypes = { "c", "cpp", "h", "hpp" },
}
