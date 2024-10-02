-- local config = require("nvchad.configs.lspconfig")
--
-- local on_attach = config.on_attach
-- local capabilities = config.capabilities
--
-- local lspconfig = require("lspconfig")
-- local util = require "lspconfig/util"
--
-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python"},
-- })
--
-- lspconfig.gopls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = {"gopls"},
--   filetypes = { "go", "gomod", "gowork", "gotmpl" },
--   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--   settings = {
--     gopls = {
--       completeUnimported = true,
--       usePlaceholders = true,
--       analyses = {
--         unusedparams = true,
--       },
--     },
--   },
-- }
--
-- lspconfig.ts_ls.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "html", "css", "js", "ts"},
--   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
-- }
--
local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults() -- loads nvchad's defaults

local servers = { "html", "cssls", "clangd"i,"gopls", "ts_ls", "pyright" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
