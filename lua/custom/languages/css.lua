local M = {}

function M.lspconfig()
  return "cssls"
end

function M.mason()
  return "css-lsp"
end

function M.treesitter()
  return "css"
end

return M
