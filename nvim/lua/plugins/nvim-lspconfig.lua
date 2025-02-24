return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local mason_lsp_config = require("mason-lspconfig")

    local border = {
      { '┌', 'FloatBorder' },
      { '─', 'FloatBorder' },
      { '┐', 'FloatBorder' },
      { '│', 'FloatBorder' },
      { '┘', 'FloatBorder' },
      { '─', 'FloatBorder' },
      { '└', 'FloatBorder' },
      { '│', 'FloatBorder' },
    }
    -- Disable lsp diagnostics messages & underline, but leave signs
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      {
        virtual_text = false,
        signs = true,
        underline = false,
      }
    )
    -- Add borders to float diagnostic messages
    vim.diagnostic.config{
      float = { border = "rounded" },
    }

    -- Add borders around LSP messages
    -- This can be configured more easily if you're using noice
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover,
      {
        border = "rounded",
        title = "Info",
      }
    )
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help,
      {
        border = "rounded",
      }
    )

    -- vim.cmd[[autocmd! NormalFloat guibg=#FF0FF0]]
    -- vim.cmd[[autocmd! ColorScheme * highlight FloatBorder guifg=#ffffff guibg=#99999f]]

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(event)
        local keymap = vim.keymap
        local opts = { buffer = event.buf }

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Show definition"
        keymap.set("n", "gd", vim.lsp.buf.definition, opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Rename what is under cursor"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()
    local signs = { Error = "✖", Warn = "", Hint = "󰠠", Info = "" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- To allow automatic set up for LSP servers installed vis mason.nvim
    -- without having to restart nvim. Make sure not to set up lspconfig
    mason_lsp_config.setup_handlers({
      -- Default handler for a server without a deciated handler
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["lua_ls"] = function()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })
      end,
      ["emmet_ls"] = function()
        lspconfig["emmet_ls"].setup({
          capabilities = capabilities,
          filetypes = {
            "html",
            "javascriptreact",
            "typescriptreact",
            "css",
            "sass",
            "scss",
            "less",
            "svelte",
          },
        })
      end,
    })

    -- Auto completion

  end
}
