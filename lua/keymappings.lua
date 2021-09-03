local utils = require('utils')

-- Espacio como la tecla lider
vim.g.mapleader = ' '

-- Duplicar lineas
utils.map('n', 'tt', ':t.<CR>')
-- Insertar ;
utils.map('i', '<A-;>', '<C-o>A;')
-- Caminar por klineas wrapeadas
utils.map('n', 'j', 'gj')
utils.map('n', 'k', 'gk')
-- Eliminar buffer
utils.map('n', '<leader>d', ':bp | bd #<CR>')
-- Guardar buffer
utils.map('n', '<F1>', ':w<CR>')
utils.map('i', '<F1>', '<C-o>:w<CR>')
-- Cerrar neovim
utils.map('n', '<F2>', ':q<CR>')
-- Moverse entre buffers
utils.map('n', '<TAB>', ':bn<CR>')
utils.map('n', '<S-TAB>', ':bp<CR>')
-- Moverse entre ventanas
utils.map('n', '<C-h>', '<C-w><C-h>')
utils.map('n', '<C-j>', '<C-w><C-j>')
utils.map('n', '<C-k>', '<C-w><C-k>')
utils.map('n', '<C-l>', '<C-w><C-l>')
-- Telescope
utils.map('n', '<leader>p', '<cmd>Telescope find_files<CR>')
utils.map('n', '<leader>o', '<cmd>Telescope live_grep<CR>')
utils.map('n', '<leader>i', '<cmd>Telescope buffers<CR>')
-- Bufferline
utils.map('n', 'gb', ':BufferLinePick<CR>')
-- Nvimtree
utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')
-- Nvim comment
utils.map('n', '<leader>/', ':CommentToggle<CR>')
utils.map('v', '<leader>/', ':CommentToggle<CR>')
