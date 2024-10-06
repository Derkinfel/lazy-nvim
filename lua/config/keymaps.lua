-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
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

map("i", "<C-х>", "<esc>")

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>a", function() harpoon:list():add() end)

map("n", "<C-1>", function() harpoon:list():select(1) end)
map("n", "<C-2>", function() harpoon:list():select(2) end)
map("n", "<C-3>", function() harpoon:list():select(3) end)
map("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function() harpoon:list():prev() end)
map("n", "<C-S-N>", function() harpoon:list():next() end)
LazyVim.safe_keymap_set("i", "<C-х>", "<esc>")

unmap("t", "<C-h>")
unmap("t", "<C-j>")
unmap("t", "<C-k>")
unmap("t", "<C-l>")
