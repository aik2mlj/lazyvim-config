-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 15
vim.opt.relativenumber = false
vim.opt.spell = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.guifont = "FiraCode Nerd Font:h11"

vim.g.neovide_transparency = 0.9
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = "auto"

-- vim.g.snacks_animate = false

if vim.g.neovide then
  vim.keymap.set("v", "<C-S-C>", '"+y') -- Copy
  vim.keymap.set("n", "<C-S-V>", '"+p') -- Paste normal mode
  vim.keymap.set("v", "<C-S-V>", '"+p') -- Paste visual mode
  vim.keymap.set("c", "<C-S-V>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<C-S-V>", '<ESC>"+pi') -- Paste insert mode
end
