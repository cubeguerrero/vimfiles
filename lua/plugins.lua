-- [[ plugins.nvim ]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- [[ User Interface ]]
  use {                                              -- filesystem navigation
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',                 -- optional, for file icons
    },
  }
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use { 'arzg/vim-colors-xcode' }                    -- colorscheme

  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }
  use { 'junegunn/gv.vim' }                          -- commit history

  -- [[ LSP ]]
  use { 'neovim/nvim-lspconfig' }
end)
