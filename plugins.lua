local overrides = require("custom.configs.overrides")

local plugins = {

  { 'cdelledonne/vim-cmake', lazy = false,
    config = function()
      require "custom.configs.vim-cmake"
    end
  },
  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"cpp", "lua", "bash"},
    },
  },

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "mg979/vim-visual-multi", lazy = false,
    config = function ()
      require "custom.configs.vim-visual-multi"
    end
  }

}

return plugins
