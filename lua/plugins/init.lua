local present, packer = pcall(require, "plugins.packerInit")
if present then
  packer = require "packer"
else
  return false
end

local use = packer.use

return packer.startup(function()
  -- Packer can manage itself as an optional plugin
  use {
    "wbthomason/packer.nvim",
    opt = true
  }
  -- Dev icons
  use {"kyazdani42/nvim-web-devicons"}
  -- Statusline
  use {
    "glepnir/galaxyline.nvim",
    requires = {"nvim-web-devicons"}
  }
  -- Bufferline
  use {
    "akinsho/bufferline.nvim",
    requires = {"nvim-web-devicons"}
  }
  -- Color scheme
  -- use {"sainnhe/sonokai"}
  use {"folke/tokyonight.nvim"}
  -- Easy install lsp
  use {"kabouzeid/nvim-lspinstall"}
  -- Lsp configuration
  use {
    "neovim/nvim-lspconfig",
    requires = {"nvim-lspinstall"}
  }
  -- Lsp completion
  use {
    "hrsh7th/nvim-compe",
    requires = "L3MON4D3/LuaSnip"
  }
  -- Auto brackets
  use {"windwp/nvim-autopairs"}
  -- Vim comment
  use {
    "terrortylor/nvim-comment",
    config = function ()
      require("plugins.config.others").comment()
    end
  }
  -- Explorer
  use {"kyazdani42/nvim-tree.lua"}
  -- Fuzzi finder
  use {
    "nvim-telescope/telescope.nvim",
    requires = {"nvim-lua/plenary.nvim"}
  }
  -- View registers
  use {
    "tversteeg/registers.nvim",
    config = function ()
      require("plugins.config.others").registers()
    end
  }
  --Tmux
  use {
    "aserowy/tmux.nvim",
    config = function ()
      require("plugins.config.others").tmux()
    end
  }
end)
