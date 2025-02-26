local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'pylsp',
  'gopls',
  'lua_ls',
  'xmlformatter'
})
local format_opts = {
  format_opts = {
    async = false,
    timeout_ms = 5000
  },
  servers = {
    ['lua_ls'] = { 'lua' },
    ['rust_analyzer'] = { 'rust' },
    ['pylsp'] = { 'python' },
    ['tsserver'] = { 'javascript', 'typescript' },
    ['gopls'] = { 'go' },
    ['xmlformatter'] = { 'xml' }
  }
}
lsp.format_mapping('<leader>l', format_opts)
lsp.format_on_save(format_opts)
lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
