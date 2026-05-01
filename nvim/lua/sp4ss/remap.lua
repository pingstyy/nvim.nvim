vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>wq", vim.cmd.wqa)
vim.keymap.set("n", "<leader>rq", vim.cmd.qa)
vim.keymap.set("n", "<leader>we", ":w | Ex<CR> ")

-- Move selected lines up and down in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep cursor in the middle when jumping half-pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Copy to system clipboard (requires +clipboard support)
vim.keymap.set({ "n", "v" }, "<leader>c", [["+y]])
vim.keymap.set("n", "<leader>c", [["+Y]])
-- Paste without losing the current register
vim.keymap.set("x", "<leader>p", [["_dP]])



-- Telescope Remaps
vim.keymap.set('n', '<leader>pf', function() require('telescope.builtin').find_files() end)
vim.keymap.set('n', '<C-p>', function() require('telescope.builtin').git_files() end)
vim.keymap.set('n', '<leader>ps',
	function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) end)



-- Harpoon (Safe & Compact)
vim.keymap.set("n", "<leader>ha", function() require("harpoon"):list():add() end)
vim.keymap.set("n", "<C-e>", function()
	local h = require("harpoon")
	h.ui:toggle_quick_menu(h:list())
end)

vim.keymap.set("n", "<C-h>", function() require("harpoon"):list():select(1) end)
vim.keymap.set("n", "<C-t>", function() require("harpoon"):list():select(2) end)
vim.keymap.set("n", "<C-n>", function() require("harpoon"):list():select(3) end)
vim.keymap.set("n", "<C-s>", function() require("harpoon"):list():select(4) end)



-- LSP
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)


-- TreeSitter



-- UndoTree Toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Git Status (The main Fugitive command)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)


-- Window Navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Quickfix Navigation
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>co", "<cmd>copen<CR>")

-- Terminal Escape
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- Mouse Menu
vim.opt.mouse = 'a'
