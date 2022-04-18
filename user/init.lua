require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
require("luasnip").filetype_extend("javascript", { "html" })
require("luasnip").filetype_extend("javascriptreact", { "html" })
require("luasnip").filetype_extend("typescript", { "html" })
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.diagnostics.flake8
    },
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
          vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
        end
      end,
})
