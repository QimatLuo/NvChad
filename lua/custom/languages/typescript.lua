local M = {}

function M.lspconfig()
  return "tsserver"
end

function M.mason()
  return "typescript-language-server"
end

function M.treesitter()
  return "javascript", "typescript"
end

return M

