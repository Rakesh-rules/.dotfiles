require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
require("luasnip").filetype_extend("javascript", { "html" })
require("luasnip").filetype_extend("javascriptreact", { "html" })
require("luasnip").filetype_extend("typescript", { "html" })

