require('plugins')
require('lsp')
require('options')

require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
  indent = {
    enable = true
  }
}
