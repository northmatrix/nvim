local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('template', {
    t { '\\documentclass{article}', '\\usepackage[utf8]{inputenc}', '', '\\title{' },
    i(1, 'Title'),
    t { '}', '\\author{' },
    i(2, 'Author'),
    t { '}', '\\date{\\today}', '', '\\begin{document}', '', '\\maketitle', '' },
    i(0),
    t { '\\end{document}' },
  }),
}
