-- [[ Configure Mini Packages ]]
require('mini.bracketed').setup()
require('mini.animate').setup({
  resize = {
    enable = false,
  },
  open = {
    enable = false,
  },
  close = {
    enable = false,
  },
})

require('mini.indentscope').setup({
  symbol = '|',
})
