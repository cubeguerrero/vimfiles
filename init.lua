--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","

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
require('which-key').setup{
  window = {
    border = "none", -- none single double shadow
    position = "bottom",
    margin = { 0, 10, 2, 10 }, -- trbl
  },
  layout = {
    spacing = 6,
    height = { min = 25, max = 25 },
  },
  key_labels = {
    ["<leader>"] = "",
    ["<space>"] = "␣",
  },
}
