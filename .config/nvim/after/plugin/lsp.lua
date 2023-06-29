local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

-- make sure this servers are installed
-- see :help lsp-zero.ensure_installed()
lsp.ensure_installed({
	'lua_ls',
	'bashls',
})

lsp.setup()
