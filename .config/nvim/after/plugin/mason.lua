require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
    vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat({
            "lua-language-server",
            "clangd",
            "clang-format",
            "pyright",
            "mypy",
            "ruff",
            "black",
            "jdtls",
            "typescript-language-server",
            "cpplint",
            "gopls",
            "rust-analyzer",
        }, " "))
      end, {})
    
})
