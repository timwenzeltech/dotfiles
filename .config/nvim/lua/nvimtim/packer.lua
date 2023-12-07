-- This file can be loaded by calling `lua require('plugins')` from your init.vimpacker

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --Telescope:
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Github color scheme
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            vim.cmd('colorscheme github_dark_dimmed')
        end
    })
    --Treesitter:
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    --Harpoon2
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    --UndoTree
    use('mbbill/undotree')
    --LuaLine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --NvimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    --LSP Stuff:
    use {
        -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim',
        },
        --Fidget.Nvim
    }
    --CMP Plugins
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('saadparwaiz1/cmp_luasnip')
    use('hrsh7th/cmp-nvim-lsp')
    --snippets
    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')
    --VimFugitivemFugitive
    use('tpope/vim-fugitive')
    --Gitsigns
    use('lewis6991/gitsigns.nvim')
    --Github CoPilot
    -- use("github/copilot.vim")
    -- Formatter.nvim
    use('mhartington/formatter.nvim')
    --Lint.nvim
    use('mfussenegger/nvim-lint')
    --Nvim-Dap
    use('mfussenegger/nvim-dap')
    use {
        'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {},
        },
    }
    use('rcarriga/nvim-dap-ui')
    use('mfussenegger/nvim-dap-python')
    use('christoomey/vim-tmux-navigator')
end)
