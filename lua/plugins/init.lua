-- ~/.config/nvim/lua/custom/plugins.lua

return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "go"
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = require "configs.mason"
  },

--   {
--     "supermaven-inc/supermaven-nvim",
--     cmd = {
--       "SupermavenStart",
--       "SupermavenStop",
--       "SupermavenRestart",
--       "SupermavenToggle",
--       "SupermavenStatus",
--       "SupermavenUseFree",
--       "SupermavenUsePro",
--       "SupermavenLogout",
--       "SupermavenShowLog",
--       "SupermavenClearLog"
--     },
--     config = function ()
--       require("configs.supermaven").setup()
--     end
--   },

  {
    "nvim-telescope/telescope.nvim",
  },

  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  }
 }
