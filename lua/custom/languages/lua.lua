local M = {}

function M.lspconfig()
  return "luau_lsp"
end

function M.mason()
  return "lua-language-server", "stylua"
end

function M.null_ls(f)
  return f.stylua
end

function M.treesitter()
  return "lua"
end

return M
