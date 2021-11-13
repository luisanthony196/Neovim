-- List of files to load
local chad_modules = {
   "settings",
   "plugins",
   "keymappings",
}
-- Load lua files
for i = 1, #chad_modules, 1 do
   if not pcall(require, chad_modules[i]) then
      error("Error loading " .. chad_modules[i] .. "\n")
   end
end

require('core.autocmd')
require('plugins.config.colorscheme')
require('plugins.config.bufferline')
require('plugins.config.nvimtree')
require('plugins.config.statusline')
require('plugins.config.lspconfig')
require('plugins.config.compe')
require('plugins.config.luasnip')
require('plugins.config.autopairs')
