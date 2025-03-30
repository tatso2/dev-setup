return {
	cmd = { "docker-langserver", "--stdio" },
	filetypes = { "dockerfile" },
	root_makers = { "Dckerfile" },
	settings = {
		docker = {
			languageserver = {
				formatter = {
					ignoreMultilineInstructions = true,
				},
			},
		},
	},
}
