-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- File Explorer
  { 'nvim-tree/nvim-tree.lua' },
  -- Icon for file icons
  { 'nvim-tree/nvim-web-devicons' },

  -- Easy Motion
  { 'phaazon/hop.nvim', branch = 'v2' },

  -- Surround
  { 'kylechui/nvim-surround' },
  -- Vim Move
  -- { 'matze/vim-move' },

  -- Projectionist
  { 'tpope/vim-projectionist' },

  -- Ruby break single line to multiple lines
  { 'AndrewRadev/splitjoin.vim' },

  -- Auto pairs or endwise
  { 'windwp/nvim-autopairs', opts = {
    disable_filetype = { "TelescopePrompt" , "vim" },
    enable_afterquote = true
  } },
  { 'tpope/vim-endwise' },

  -- Lazygit integration
  { 'kdheepak/lazygit.nvim' },

  -- Highlight word at cursor
  { 'itchyny/vim-cursorword' },

  -- Github Copilot
  { 'github/copilot.vim' },

  -- Renamer
  -- { 'filipdutescu/renamer.nvim', branch = 'master', requires = { {'nvim-lua/plenary.nvim'} } },

  -- Nvim movement in one go
  { 'booperlv/nvim-gomove', opts = {
    map_defaults = false,
    reindent = true,
    undojoin = true,
    move_past_end_col = false,
  } },

  -- Coc nvim
  { 'neoclide/coc.nvim', branch = 'release' },

  -- Winshift
  { 'sindrets/winshift.nvim', opts = {
    highlight_moving_win = true,  -- Highlight the window being moved
    moving_win_options = {
      wrap = false,
      cursorline = true,
      cursorcolumn = true,
      colorcolumn = "",
    }
  } },
  {
    "tversteeg/registers.nvim",
    name = "registers",
    keys = {
      { "\"",    mode = { "n", "v" } },
      { "<C-R>", mode = "i" }
    },
    cmd = "Registers",
  },

  -- Vim movement + motion with brackets
  { 'echasnovski/mini.bracketed', version = '*' },
  { 'echasnovski/mini.animate', version = '*' },
  { 'echasnovski/mini.indentscope', version = '*' },

  { "RutaTang/quicknote.nvim", config={
    mode = "resident"
  }, dependencies = { "nvim-lua/plenary.nvim"} },

  -- Harpoon for marks
  { 'ThePrimeagen/harpoon', opts = {}, dependencies = { "nvim-lua/plenary.nvim"} },

  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }
}
