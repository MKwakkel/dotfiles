return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "pkgbuild_language_server",
        "clangd", -- C / C++
        "esbonio", -- sphinx
        "neocmake", -- cmake
        "foam_ls", -- openfoam
        "fortls", -- fortran
        -- "tsserver",
        -- "html",
        -- "cssls",
        -- "tailwindcss",
        -- "svelte",
        "lua_ls", -- lua
        -- "graphql",
        -- "emmet_ls",
        -- "prismals",
        "pyright", -- python
        "texlab", -- latex
        "remark_ls",
        "rust_analyzer",
        --"xmlformatter",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      -- list of formatters & linters for mason to install
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    })
  end,
}
