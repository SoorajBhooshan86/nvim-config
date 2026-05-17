local opt = vim.opt

vim.g.mapleader = " "

-- Line numbers
opt.number = true

-- Indentation (4 spaces for C/C++/GDScript, 2 for Lua)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.wrap = false

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.undofile = true -- persistent undo
opt.swapfile = false
opt.clipboard = "unnamedplus" -- use system clipboard
opt.updatetime = 250

vim.diagnostic.config({
	float = { border = "rounded" },
	virtual_text = false,
	signs = true,
})

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})

vim.lsp.config("clangd", {
	cmd = { "clangd" },
	filetypes = { "c", "cpp" },
	root_markers = { "compile_commands.json", ".git" },
})

vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".git" },
})

vim.lsp.config("bashls", {
	cmd = { "bash-language-server", "start" },
	filetypes = { "sh", "bash" },
	root_markers = { ".git" },
})

vim.lsp.enable({ "clangd", "lua_ls", "bashls" })

vim.api.nvim_create_autocmd("User", {
	pattern = "MiniFilesWindowOpen",
	callback = function(args)
		vim.api.nvim_win_set_option(args.data.win_id, "winblend", 30)
		vim.api.nvim_set_hl(0, "MiniFilesNormal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "MiniFilesBorder", { bg = "NONE" })
	end,
})
