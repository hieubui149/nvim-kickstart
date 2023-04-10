-- [[ Configure Nvim Tree ]]
-- See `:help nvim-tree`

vim.keymap.set('n', '<leader>ls', ':NvimTreeToggle<CR>', { desc = 'Toggle tree [L]ist [S]how' })
vim.keymap.set('n', '<leader>lr', ':NvimTreeToggle<CR>', { desc = 'Toggle tree [L]ist [R]efresh' })
vim.keymap.set('n', '<leader>lf', ':NvimTreeToggle<CR>', { desc = 'Toggle tree [L]ist [F]ind Files' })
-- nnoremap <F1> :NvimTreeToggle<CR>

local tree_cb = require('nvim-tree.config').nvim_tree_callback
local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
  { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
  { key = "v",                            cb = tree_cb("vsplit") },
  { key = "x",                            cb = tree_cb("split") },
  { key = "t",                            cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>",                         cb = tree_cb("close_node") },
  { key = "<S-CR>",                       cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_git_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "<C-x>",                        cb = tree_cb("cut") },
  { key = "<C-c>",                        cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "s",                            cb = tree_cb("system_open") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}
require('nvim-tree').setup {
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  view = {
    width   = 40,
    hide_root_folder = false,
    side    = 'left',
    -- auto_resize = true,
    mappings = {
      list = list
    },
    number = false,
    relativenumber = false,
    signcolumn = 'yes',
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "double",
        width = 50,
        height = 30,
        row = 1,
        col = 3,
      },
    }
  }
}
