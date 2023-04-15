-- [[ Configure Github Copilot ]]
vim.g.copilot_autostart = 1
vim.g.copilot_autostart_delay = 5
-- vim.g.copilot_autostart_filetypes = { 'ruby', 'javascript', 'typescript' }
-- Disable default Github Copilot <TAB> accept
vim.g.copilot_no_tab_map = true

vim.keymap.set( 'i', '<c-j>', 'copilot#Accept("<CR>")', {
  desc = 'Copilot#Accept()',
  silent = true,
  noremap = true,
  expr = true,
  replace_keycodes = false
})
vim.keymap.set('i', '<c-u>', function()
  vim.cmd('call copilot#Next()')
end, { desc = 'Copilot#Next()', silent = true })
vim.keymap.set('i', '<c-i>', function()
  vim.cmd('call copilot#Previous()')
end, { desc = 'Copilot#Previous()', silent = true })

vim.api.nvim_set_hl(0, 'CopilotSuggestion', { ctermbg=203, fg='#F02E6E' })
