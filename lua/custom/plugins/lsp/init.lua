require('custom.plugins.lsp.setup')
require('custom.plugins.lsp.install')
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end
require "custom.plugins.lsp.lsp-installer"

