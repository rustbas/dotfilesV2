require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"clangd"},
})

require("lspconfig").clangd.setup {}
