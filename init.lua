-- Set line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Set tabs to 4 spaces and expand tabs to spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable search options
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Key mappings for saving (Ctrl+S to save)
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Basic colorscheme (You can change this later)
vim.cmd('colorscheme desert')

-- Plugin manager setup (packer.nvim)
require('packer').startup(function()
  use 'wbthomason/packer.nvim'           -- Packer can manage itself
  use 'junegunn/fzf'                     -- Fuzzy file finder
  use 'tpope/vim-commentary'             -- Commenting tool
end)
