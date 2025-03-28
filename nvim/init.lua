vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.api.nvim_set_keymap("i", "<M-(>", "<C-o>0", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-9>", "<C-o>^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-)>", "<C-o>$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-0>", "<C-o>g_", { noremap = true, silent = true })

vim.opt.clipboard = "unnamedplus"
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "
vim.opt.termguicolors = true

-- vim.opt.number = false        -- Disable line numbers
-- vim.opt.relativenumber = false -- Disable relative line numbers
vim.opt.showmode = false -- Hide -- INSERT -- mode text
vim.opt.laststatus = 0 -- Remove status bar
vim.opt.cmdheight = 0 -- Hide command line when not in use
vim.opt.signcolumn = "no" -- Remove left-side sign column

-- Background translucent blur
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })

-- Lazy💤
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

--local opts= {}
require("lazy").setup("plugins")
