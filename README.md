# lmg.nvim
my personal neovim config

This repository contains my personal Neovim configuration, set up using lazy.nvim for plugin management. This configuration is optimized for better performance and ease of use, with support for fuzzy finding, code commenting, status line customization, and more.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
   - [Clone the Repository](#clone-the-repository)
   - [Install `lazy.nvim`](#install-lazynvim)
3. [Usage](#usage)
4. [Configuration Overview](#configuration-overview)
   - [Basic Settings](#basic-settings)
   - [Key Mappings](#key-mappings)
   - [Plugins](#plugins)
5. [License](#license)

---

## Prerequisites

- **Neovim v0.7+**: Check your version with `nvim --version`.
- **Git**: Required to clone the config and install `lazy.nvim`.

---

## Installation

### Clone the Repository

1. Clone this repository into your Neovim config directory:

   ```bash
   git clone https://github.com/your-username/neovim-config.git ~/.config/nvim
   ```

2. Navigate to the cloned directory

   ```bash
   cd ~/.config/nvim
   ```



## Usage

Simply open Neovim, and all configured plugins and settings will be automatically loaded. This configuration is ready to use out of the box for common tasks like file searching, code commenting, and more.


# Configuration Overview

## Basic Settings

	•	Line Numbers: Absolute and relative numbers for easy navigation.
	•	Mouse Support: Full mouse support in Neovim.
	•	System Clipboard: Copy and paste across different apps.
	•	Tabs: Tabs are set to 4 spaces for consistent indentation.

## Key Mappings

	•	Save with Ctrl+S: Quickly save files with Ctrl+S.

## Plugins

Here are some of the main plugins included in this configuration:

	•	fzf: Fuzzy file finder.
	•	vim-commentary: Easy commenting with gcc.
	•	lualine.nvim: Customizable status line.
	•	nvim-treesitter: Syntax highlighting.
	•	nvim-lspconfig: Built-in Language Server Protocol support.

## License

This configuration is available under the MIT License.
