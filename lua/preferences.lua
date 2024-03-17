vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Center the screen when doing searches
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
