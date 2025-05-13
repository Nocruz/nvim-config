---- Default configurations
require('nvim-configs')

---- Plugins
-- Setup lazy.nvim
require('config/lazy')

-- Setup Telescope macros
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })

-- Setup Neo-Tree macros
vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle left<CR>', { desc = 'Toggle Neo-Tree to the left' })

-- Setup LSP keymaps
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
