local M = {}

M.ensure_installed = {
 -- Go
  "gopls",
  "gofumpt",
  "goimports-reviser",
  "golines",
  -- Rust
  "rust-analyzer",
  "rustfmt",
  -- TypeScript/JavaScript
  "typescript-language-server",
  "eslint-lsp",
  "prettier",
  "deno",
}

return M
