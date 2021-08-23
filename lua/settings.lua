local utils = require('utils')

-- Global options
utils.opt('o', 'clipboard', 'unnamedplus')
utils.opt('o', 'completeopt', 'menuone,noselect')
utils.opt('o', 'hidden', true)
utils.opt('o', 'lazyredraw', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'pumheight', 10)

-- Window-scoped options
utils.opt('w', 'number', false)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'wrap', true)
utils.opt('w', 'linebreak', true)

-- Buffer-scoped options
utils.opt('b', 'expandtab', true)
utils.opt('b', 'tabstop', 2)
utils.opt('b', 'softtabstop', 2)
utils.opt('b', 'shiftwidth', 2)
