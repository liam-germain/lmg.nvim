-- Set basic options
vim.opt.number = true               -- Show line numbers
vim.opt.relativenumber = true        -- Relative line numbers
vim.opt.mouse = 'a'                 -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'   -- Use system clipboard
vim.opt.tabstop = 4                 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4              -- Number of spaces for auto-indent
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.smartcase = true            -- Ignore case in search unless capital letter is used
vim.opt.ignorecase = true           -- Ignore case when searching
vim.opt.termguicolors = true        -- Enable true colors in terminal
vim.opt.splitright = true           -- Split vertical windows to the right
vim.opt.splitbelow = true           -- Split horizontal windows below


vim.g.have_nerd_font = true         -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.opt.undofile = true             -- Save undo history


-- Initialize lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration using lazy.nvim
require("lazy").setup({
  -- Plugins for enhanced usability
  { "junegunn/fzf" },                -- Fuzzy file finder
  { "tpope/vim-commentary" },        -- Quick commenting
  { "nvim-lualine/lualine.nvim" },   -- Status line

  -- Theme: Gruvbox or OneDark for better readability
  { "morhetz/gruvbox" },             -- Gruvbox theme
  { "navarasu/onedark.nvim" },       -- OneDark theme (optional)

  -- Syntax highlighting and performance
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },  -- Syntax highlighting using Tree-sitter

  -- LSP (Language Server Protocol) for code intelligence
  { "neovim/nvim-lspconfig" },        -- Basic LSP setup
})

-- Set the color scheme (change to "onedark" if preferred)
vim.cmd("colorscheme gruvbox")

-- Configure lualine (status line) with minimalistic settings
require('lualine').setup {
  options = {
    theme = 'gruvbox',              -- Match lualine with the theme
    section_separators = '',        -- No separators for minimal look
    component_separators = ''
  }
}

-- Auto sync plugins after writing to init.lua
vim.cmd [[autocmd BufWritePost init.lua source <afile> | Lazy sync]]

-- Additional server optimizations: disable mouse and reduce features over SSH
if vim.fn.has("unix") == 1 then
  if vim.fn.exists("$SSH_CLIENT") == 1 then
    vim.opt.mouse = ""             -- Disable mouse over SSH for performance
    vim.opt.relativenumber = false  -- Disable relative line numbers
  end
end
