return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      diagnostics = {
        virtual_text = false,
        float = {
          border = "rounded",
          source = "always",
        },
      },
      servers = {
        rust_analyzer = {
          -- Disable rust-analyzer in favor of rustaceanvim
          enabled = false,
        },
      },
    },
  },
}
