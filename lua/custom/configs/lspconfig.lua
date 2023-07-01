local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  require("custom.languages.css").lspconfig(),
  require("custom.languages.html").lspconfig(),
  require("custom.languages.lua").lspconfig(),
  require("custom.languages.typescript").lspconfig(),
  require("custom.languages.vue").lspconfig(),
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
