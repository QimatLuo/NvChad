---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<SPACE><SPACE>y"] = { ":%y+<CR>", "copy all to system clipboard" },
  },
  v = {
    ["<SPACE>s"] = { ":sort<CR>", "sort selected lines" },
    ["<SPACE>y"] = { '"+y', "copy selected to system clipboard" },
  },
}

return M
