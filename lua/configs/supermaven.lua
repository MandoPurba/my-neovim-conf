local M = {}

function M.setup()
  require("supermaven-nvim").setup({
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-j>",
    },
    ignore_filetypes = { cpp = true },
    color = {
      suggestion_color = "#ffffff",
      cterm = 244,
    },
    log_level = "info",
    disable_inline_completion = false,
    disable_keymaps = false,
    condition = function()
      return false
    end
  })

  -- Optional: Setup nvim-cmp integration
  local cmp = require('cmp')
  cmp.setup({
    sources = {
      { name = "supermaven" },
      -- your other sources...
    },
    -- Optional: Add icon for Supermaven in completion menu
    formatting = {
      format = function(entry, vim_item)
        if entry.source.name == "supermaven" then
          vim_item.kind = "Supermaven"
        end
        return vim_item
      end,
    },
  })
end

return M
