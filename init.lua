--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plugins')   -- Plugins
require('lsp')       -- LSP

-- PLUGINS
require('nvim-tree').setup{}
require('nvim-treesitter').setup{
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  }
}
