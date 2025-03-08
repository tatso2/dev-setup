local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- Use spaces instead of tabs
opt.autoindent = true
opt.wrap = false
opt.smartindent = true

opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true -- Enable highlighting of the current line
opt.ignorecase = true -- Ignore case
opt.showcmd = false

-- search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive

opt.signcolumn = "yes"
opt.backspace = "indent,eol,start" -- allow backspace on indent, etc.

-- -- Folding code
opt.foldmethod = "expr"
opt.foldenable = true
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldcolumn = "1"
opt.foldtext = ""
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}

-- clipboard
opt.clipboard:append({ "unnamedplus" }) -- use system clipboard as default register

-- split windows
opt.splitright = true

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
end

-- System settings
opt.swapfile = false

-- GUI settings
-- opt.guicursor = "n-i-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
