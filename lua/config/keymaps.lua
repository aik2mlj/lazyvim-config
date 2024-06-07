-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, "J", "5j", { remap = true })
vim.keymap.set({ "n", "x" }, "K", "5k", { remap = true })

vim.keymap.set({ "n", "i" }, "<a-h>", "<esc><cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set({ "n", "i" }, "<a-l>", "<esc><cmd>bnext<cr>", { desc = "Next Buffer" })

vim.keymap.set("n", "<S-h>", "^")
vim.keymap.set("n", "<S-l>", "$")
