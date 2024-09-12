-- Basic Neovim settings
vim.opt.number = true               -- Show line numbers
vim.opt.relativenumber = true       -- Show relative line numbers
vim.opt.mouse = 'a'                 -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'   -- Use system clipboard
vim.opt.tabstop = 4                 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4              -- Number of spaces for auto-indentation
vim.opt.expandtab = true            -- Convert tabs to spaces
vim.opt.incsearch = true            -- Show search matches as you type
vim.opt.hlsearch = true             -- Highlight search results
vim.opt.ignorecase = true           -- Ignore case when searching
vim.opt.smartcase = true            -- Override ignorecase if search contains capitals
vim.opt.splitright = true           -- Open vertical splits to the right
vim.opt.splitbelow = true           -- Open horizontal splits below

-- Key mappings
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })  -- Ctrl+S to save

-- Set color scheme (you can change this to any other theme)
vim.cmd('colorscheme desert')

-- Load packer.nvim for plugin management
vim.cmd [[packadd packer.nvim]]

-- Plugin management using packer.nvim
require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy file finder
    use {
        'junegunn/fzf',
        run = function() vim.fn['fzf#install']() end
    }

    -- Commenting plugin
    use 'tpope/vim-commentary'

    -- Optional: Status line plugin
    use {
        'hoob3rt/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Optional: Tree-sitter for better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Optional: LSP support for language servers
    use 'neovim/nvim-lspconfig'
end)

-- Example of enabling LSP (Language Server Protocol) for Python
-- You can configure more LSP servers here
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}

-- Automatically install missing plugins on startup
vim.cmd [[autocmd BufWritePost init.lua source <afile> | PackerSync]]
