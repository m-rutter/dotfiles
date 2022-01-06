-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
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
    
    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Theme
    use 'glepnir/zephyr-nvim'

    -- Syntax Highlighting
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp_extensions.nvim'
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

    -- UI
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'edluffy/specs.nvim'}

    use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
      end
    }

    
    -- Navigation
    use 'preservim/nerdtree'
    use {
    'nvim-telescope/telescope.nvim',
     requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'justinmk/vim-sneak'

    -- Languages 
    use 'cespare/vim-toml'
end)


-- Setup Tree Sitter
require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
  indent = {
    enable = true
  }
}

-- Setup airline theme
require('lualine').setup()
