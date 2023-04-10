local autocmd = vim.api.nvim_create_autocmd   -- Create autocommands

-- [[ Configure Hop ]]
-- Doc :help hop
local hop = require('hop')
hop.setup()
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})
-- Keymap for HOP
vim.keymap.set('n', '<c-h>p', ':HopPattern<CR>', { desc = '' })

-- [[ Configure Surround ]]
-- Doc :help nvim-surround
require("nvim-surround").setup()

-- [[ Configure vim-move ]]
vim.g.move_key_modifier = 'C'

--
vim.opt.colorcolumn = '80'
vim.opt.encoding = 'utf8'
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.smartindent = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 20
vim.opt.fillchars = { eob = '•' ,fold = ' ' ,vert = '⏽' }

vim.g.nopaste = true
vim.g.linespace = 1
vim.g.nopaste = true
vim.g.ruler = true

vim.cmd('set clipboard+=unnamedplus')

-- [[ Configure lazygit ]]
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open [L]azy[G]it' })
vim.keymap.set('n', '<leader>lgc', ':LazyGitConfig<CR>', { desc = 'Open [L]azy[G]it [C]onfig' })

-- [[ Common configuration ]]
autocmd('BufWritePre', { pattern = '*', command = "%s/\\s\\+$//e" })

-- [[ Common keymaps ]]
-- Configure util movements
vim.keymap.set({ 'n', 'v' }, '<Space>jh', '<c-w><c-h>', { desc = '[J]ump to Left Pane' })
vim.keymap.set({ 'n', 'v' }, '<Space>jj', '<c-w><c-j>', { desc = '[J]ump to Bottom Pane' })
vim.keymap.set({ 'n', 'v' }, '<Space>jk', '<c-w><c-k>', { desc = '[J]ump to Top Pane' })
vim.keymap.set({ 'n', 'v' }, '<Space>jl', '<c-w><c-l>', { desc = '[J]ump to Right Pane' })

-- Copy file name / relative path / full path
vim.keymap.set('n', '<Space>cr', ':let @+=expand("%")<CR>', { desc = '[C]opy [R]elative path' })
vim.keymap.set('n', '<Space>cf', ':let @+ = expand("%:p")<CR>', { desc = '[C]opy [F]ull path' })
vim.keymap.set('n', '<Space>cn', ':let @+ = expand("%:t")<CR>', { desc = '[C]opy File [N]ame' })

-- Configure custom development keys
vim.keymap.set('v', '<c-c>', '"*y', { desc = 'Copy to clipboard registry' })
vim.keymap.set('n', 'Y', 'y$', { desc = '[Y]ank to the End of line' })
vim.keymap.set('n', 'v$', 'v$h', { desc = '[V]isual to the last character of line' })
vim.keymap.set('n', '<c-a>', 'ggVG', { desc = '[V]isual all textes of the current buffer' })
vim.keymap.set('n', '<S-j>n', 'i<CR><ESC>', { desc = 'Break cursor to a new line' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Keeping centered' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Keeping centered' })
vim.keymap.set('n', '<S-j>', 'mzJ`z', { desc = 'Keeping centered' })
vim.keymap.set('n', '<leader><leader>', '<c-^>', { desc = 'Switch between the last two buffers' })
vim.keymap.set('n', 'Zz', "<c-w>|", { desc = '[Z]oom In' })
vim.keymap.set('n', 'Zo', "<c-w>=", { desc = '[Z]oom [O]ut' })
vim.keymap.set('n', '<c-e>', 'A<ESC>', { desc = '[J]ump to the end of line' })
vim.keymap.set('n', '<c-i>', 'I<ESC>', { desc = '[J]ump to the start of line' })
vim.keymap.set('n', '<CR>', '<ESC>:noh<CR>', { desc = 'Clear console', silent = true })
vim.keymap.set('n', '<S-f><S-r>', ':set ft=ruby<ESC>', { desc = '[F]ormat [R]uby current buffer' })
vim.keymap.set('n', '<S-f><S-j>', ':set ft=json<ESC>', { desc = '[F]ormat [J]ON current buffer' })
vim.keymap.set('n', '<S-f><S-m>', ':set ft=markdown<ESC>', { desc = '[F]ormat [M]arkdown current buffer' })
