-- [[ keys.lua ]]
local map = vim.keymap.set
local telescope = require('telescope.builtin')
local wk = require('which-key')

-- [[ Telescope ]]
map('n', '<leader>ff', telescope.find_files, {})
map('n', '<leader>fb', telescope.buffers, {})
map('n', '<leader>fg', telescope.live_grep, {})
map('n', '<leader>fr', telescope.oldfiles, {})
map('n', '<leader>fn', [[:enew]], {})
wk.register({
  ["<leader>f"] = {
    name = "+file",
    f = { "<cmd>Telescope find_files<CR>", "Find File" },
    b = { "<cmd>Telescope buffers<CR>", "Open Buffers" },
    g = { "<cmd>Telescope live_grep<CR>", "Grep" },
    n = { "<cmd>enew<CR>", "New File" },
    r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
  },
})

-- [[ NvimTreeToggle ]]
map('n', '<leader>tt', [[:NvimTreeToggle<CR>]], {})
wk.register({
  ["<leader>t"] = {
    name = "+tree",
    t = { "<cmd>NvimTreeToggle<cr>", "Tree Toggle" },
  },
})
