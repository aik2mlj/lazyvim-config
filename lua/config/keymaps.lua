-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, "H", "g^")
vim.keymap.set({ "n", "x" }, "L", "g$")
vim.keymap.set({ "n", "x" }, "J", "5gj")
vim.keymap.set({ "n", "x" }, "K", "5gk")
vim.keymap.set({ "n", "x" }, "<leader>j", "J", { desc = "Join Lines" })

vim.keymap.set({ "n", "i" }, "<M-h>", "<esc><cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set({ "n", "i" }, "<M-l>", "<esc><cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set({ "n", "i" }, "<M-p>", "<esc>:b#<cr>", { desc = "Next Buffer" })
vim.keymap.set({ "n", "i" }, "<esc><c-a>", "ggVG")

vim.keymap.set("n", "<M-J>", ":t .<CR>", { silent = true })
vim.keymap.set("n", "<M-K>", ":t .-1<CR>", { silent = true })
vim.keymap.set("n", "U", "<c-r>")
vim.keymap.set("n", "<leader>r", ":%s//g<Left><Left>", { desc = "Global Replace" })

-- vim.keymap.del("n", "<leader>ww")
-- vim.keymap.del("n", "<leader>wd")
-- vim.keymap.del("n", "<leader>w-")
-- vim.keymap.del("n", "<leader>w|")
-- vim.keymap.del("n", "<leader>wm")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>", { silent = true, desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { silent = true, desc = "Quit" })

vim.keymap.set("x", "<M-J>", ":t'><CR>gv", { silent = true })
vim.keymap.set("x", "<M-K>", ":t-1<CR>gv", { silent = true })
vim.keymap.set("x", "<leader>f", 'y<ESC>/<c-r>"<CR>', { desc = "Search Selected" })
vim.keymap.set("x", "<leader>F", "<cmd>Telescope grep_string<cr>", { desc = "Global Search Selected" })
vim.keymap.set("x", "<leader>r", ":s//g<Left><Left>", { desc = "Replace in Selected" })
