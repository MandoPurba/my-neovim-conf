local options = {
  formatters_by_ft = {
    -- Lua
    lua = { "stylua" },

    -- Go
    go = { "gofumpt", "goimports-reviser", "golines" },

    -- Rust
    rust = { "rustfmt" },

    -- Deno
    deno = { "deno_fmt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  -- Formatter options
  formatters = {
    stylua = {
      prepend_args = {
        "--quote-style", "double",
        "--indent-type", "spaces",
        "--indent-width", "2",
      },
    },

    rustfmt = {
      prepend_args = {
        "--edition=2021",
        "--emit=stdout",
      },
    },

    gofumpt = {
      prepend_args = {
        "-extra",
      },
    },

    ["goimports-reviser"] = {
      prepend_args = {
        "-format",
      },
    },

    golines = {
      prepend_args = {
        "--max-len=100",
        "--base-formatter=gofumpt",
      },
    },

    deno_fmt = {
      prepend_args = {
        "--indent-width", "2",
        "--line-width", "100",
      },
    },
  },
}

return options
