---@type NvPluginSpec[]
local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
   "prettier",
        require("custom.languages.css").mason(),
        require("custom.languages.html").mason(),
        require("custom.languages.lua").mason(),
        require("custom.languages.typescript").mason(),
        require("custom.languages.vue").mason(),
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        require("custom.languages.css").treesitter(),
        require("custom.languages.html").treesitter(),
        require("custom.languages.lua").treesitter(),
        require("custom.languages.typescript").treesitter(),
        require("custom.languages.vue").treesitter(),
      },
      indent = {
        enable = true,
      },
    },
  },
}

return plugins
