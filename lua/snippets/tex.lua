local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('template', {
    t {
      '\\documentclass{article}',
      '\\usepackage{amsmath,amsthm,amssymb}',
      '',
      '\\newtheorem{theorem}{Theorem}[section]',
      '\\newtheorem{lemma}{Lemma}',
      '\\newtheorem{corollary}[theorem]{Corollary}',
      '\\newtheorem{definition}{Definition}',
      '',
      '\\newcommand{\\R}{\\mathbb{R}}',
      '\\newcommand{\\dx}[1]{\\,\\mathrm{d}#1}',
      '\\renewcommand{\\epsilon}{\\varepsilon}',
      '\\DeclareMathOperator{\\hcf}{hcf}',
      '\\DeclareMathOperator{\\lcm}{lcm}',
      '',
      '\\title{',
    },
    i(1, 'Title'),
    t { '}', '\\author{' },
    i(2, 'Author'),
    t { '}', '\\date{\\today}', '', '\\begin{document}', '', '\\maketitle', '' },
    i(0),
    t { '\\end{document}' },
  }),
}
