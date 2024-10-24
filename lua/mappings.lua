-- lua/mappings.lua

require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- your existing mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")



