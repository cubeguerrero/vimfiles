-- [[ keys.lua ]]
local map = vim.keymap.set
local telescope = require('telescope.builtin')

-- [[ Telescope ]]
map('n', '<leader>ff', telescope.find_files, {})
map('n', '<leader>fb', telescope.buffers, {})
map('n', '<leader>fg', telescope.live_grep, {})

-- [[ NvimTreeToggle ]]
map('n', '<leader>tt', [[:NvimTreeToggle<CR>]], {})
