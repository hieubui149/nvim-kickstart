-- [[ Configuration for Fine Cmdline ]]
vim.opt.cmdheight = 0

require('fine-cmdline').setup({
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
    prompt = ': '
  },
  popup = {
    position = "50%",
    size = {
      width = 80,
      height = "20%",
    },
    border = {
      style = 'rounded',
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
    },
  },
})

vim.api.nvim_set_keymap('n', ':', ':FineCmdline<CR>', {noremap = true})

set_keymaps = function(imap, feedkeys)
  local fn = require('fine-cmdline').fn

  imap('<c-k>', fn.up_search_history)
  imap('<c-j>', fn.down_search_history)
  imap('<Up>', fn.up_history)
  imap('<Down>', fn.down_history)
end
