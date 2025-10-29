-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    'lervag/vimtex',
    ft = { 'tex', 'plaintex', 'latex' },
    config = function()
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        build_dir = 'build',
        options = { '-pdf', '-interaction=nonstopmode', '-synctex=1' },
      }
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_quickfix_mode = 0
      vim.opt.conceallevel = 0 -- This was prevously2 it just annoyed me
      vim.opt.concealcursor = 'nc'
      vim.g.tex_conceal = 'abdmg'

      vim.g.vimtex_indent_enabled = 1
      vim.g.vimtex_complete_enabled = 1
      --vim.g.vimtex_fold_enabled = 1
      vim.g.vimtex_syntax_enabled = 1
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
      require('crates').setup()
    end,
  },
}
