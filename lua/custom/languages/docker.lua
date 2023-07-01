local M = {}

function M.lspconfig()
  return "dockerls", "docker_compose_language_service"
end

function M.mason()
  return "dockerfile-language-server", "docker-compose-language-service"
end

function M.treesitter()
  return "dockerfile"
end

return M
