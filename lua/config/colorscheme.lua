local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd 'colorscheme sonokai'

vim.g.sonokai_style = 'andromeda'
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_transparent_background = 1
