local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  require("custom.languages.lua").null_ls(b.formatting),
  b.formatting.prettier,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
