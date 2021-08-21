local present, packer = pcall(require, "packerInit")
if present then
  packer = require "packer"
else
  return false
end

local user = packer.use

return packer.startup(function()
  -- Packer can manage itself as an optional plugin
  use {
    'wbthomason/packer.nvim',
    opt = true
  }
  -- Statusline
  use { 'glepnir/galaxyline.nvim' }
  -- Lsp configuration
  use {
    "neovim/nvim-lspconfig",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- Lsp completion
  use {
    "hrsh7th/nvim-compe",
    requires = 'L3MON4D3/LuaSnip'
  }
  -- Easy install lsp
  use {"kabouzeid/nvim-lspinstall"}
  -- Color scheme
  use {'sainnhe/sonokai'}
  -- Fuzzi finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- Vim comment
  use { "terrortylor/nvim-comment" }
  -- View registers
  use {"tversteeg/registers.nvim"}
  -- Auto brackets
  use {'windwp/nvim-autopairs'}
  -- Tabs que muestran los buffers
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
end)
