-- Vim settings
-- Quick change settings
-- Avalible colorschemes: nord gruvbox ghostty-terminal-default
-- Main settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.mouse = "nv"
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.o.background = "dark"
-- Key binds
vim.keymap.set("v", "<Leader>y", "+y")
vim.keymap.set("v", "<Leader>p", "+p")
-- Disable Arrow Keys
vim.keymap.set({ "n", "i" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i" }, "<Left>", "<Nop>")
-- Set Leader Key
vim.g.mapleader = " "
