-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- TPope Collection
    use 'tpope/vim-sensible'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-sleuth'
    use 'tpope/vim-markdown'
    use 'tpope/vim-repeat'

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    -- Syntax Highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- LSP
    use 'neovim/nvim-lspconfig'

    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
end)
