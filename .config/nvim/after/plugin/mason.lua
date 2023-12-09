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
            "lua-language-server",  --Lua LSP
            "clangd",               --C/CPP LSP 
            "clang-format",         --C/CPP Formatter
            "codelldb",             --C/CPP Debugger
            "cpplint",              --C/CPP Linter
            "pyright",              --Python LSP 
            "mypy",                 --Python Diagnostics
            "ruff",                 --Python Diagnostics 
            "black",                --Python Formatter 
            "debugpy",              --Python Debugger
            "jdtls",                --Java Language Server
            "checkstyle",           --Java Linter but borderline useless cus stylechecks
            "sonarlint-language-server",    --Java Liter
            "google-java-format",   --Java Formatter
            "typescript-language-server",
            "gopls",                --Go LSP
            "rust-analyzer",        --Rust LSP
        }, " "))
      end, {})
})
