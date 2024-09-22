-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", "<c-.>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

map("t", "<C-.>", "<cmd>close<cr>", { desc = "Hide Terminal" })
map("i", "C-х", "<esc>")
