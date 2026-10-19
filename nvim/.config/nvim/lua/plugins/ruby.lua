return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
        },
        rubocop = {
          enabled = false,
        },
        herb_ls = {
          filetypes = { "eruby" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    -- Don't shell out to the rubocop CLI on every save (cold Ruby boot = slow).
    -- Drop ruby from conform so format-on-save falls back to ruby_lsp, which
    -- runs rubocop in-process (resident, near-instant — same as Zed).
    -- Same for eruby: format through herb_ls.
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.ruby = nil
      opts.formatters_by_ft.eruby = nil
    end,
  },
}
