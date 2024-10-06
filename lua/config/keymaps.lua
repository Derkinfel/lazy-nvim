-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del
local getCurrentDir = function()
  return vim.fn.expand("%:p"):match(".*/")
end
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = getCurrentDir() })
end

map("n", "<c-.>", function()
  lazyterm()
end, { desc = "Terminal (cwd)" })

map("t", "<C-.>", "<cmd>close<cr>", { desc = "Hide Terminal" })
LazyVim.safe_keymap_set("i", "<C-х>", "<esc>")

unmap("t", "<C-h>")
unmap("t", "<C-j>")
unmap("t", "<C-k>")
unmap("t", "<C-l>")
