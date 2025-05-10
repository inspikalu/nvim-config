local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Enable diagnostics
vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  signs = true,
  update_in_insert = false,
})

-- Setup Mason with UI enhancements
mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

-- Custom on_attach function
local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings with improved descriptions
  local map = function(mode, keys, func, desc)
    vim.keymap.set(mode, keys, func { buffer = bufnr, desc = "LSP: " .. desc })
  end

  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "K", vim.lsp.buf.hover, "Hover documentation")
  map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
  map("n", "gr", vim.lsp.buf.references, "Show references")
  map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")
  map("n", "<leader>fd", vim.diagnostic.open_float, "Show diagnostics")
end

-- Configure mason-lspconfig with handlers
mason_lspconfig.setup({
  ensure_installed = { 
    "lua_ls",
    "typescript-language-server",  -- This should be the correct name for TypeScript
    "rust_analyzer",
    "pyright"
  },
  automatic_installation = true,
  handlers = {
    -- Default handler
    function(server_name)
      lspconfig[server_name].setup({
        on_attach = on_attach,
        capabilities = cmp_nvim_lsp.default_capabilities()
      })
    end,
    -- Lua-specific configuration
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false }
          }
        }
      })
    end,

}
})

-- Auto-completion setup
local cmp = require("cmp")

cmp.setup({
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  experimental = {
    ghost_text = true,
  },
})
