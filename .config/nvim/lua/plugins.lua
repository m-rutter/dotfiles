vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'editorconfig/editorconfig-vim'

  -- Motion plugins
  use 'justinmk/vim-sneak' -- s-<char>-<char>

  use 'tpope/vim-commentary' -- comment out stuff

  -- Git
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Themes
  use 'RRethy/nvim-base16'
  
  -- Syntax Highlighting
  use { 
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
  }

  -- Themes
  use 'shaunsingh/nord.nvim'

  -- GUI
  use 'itchyny/lightline.vim'
  use {
    'andymass/vim-matchup',
    setup = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'


  -- Fuzzy Finder
  use 'airblade/vim-rooter'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Semantic language support
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'ray-x/lsp_signature.nvim'
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

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'      

end)

-- Setup Tree Sitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
	  "rust", 
	  "typescript", 
	  "javascript", 
	  "python", 
	  "json", 
	  "yaml", 
	  "html", 
    "lua",
	  "css", 
	  "dockerfile", 
	  "diff", 
	  "cmake", 
	  "gitcommit", 
	  "graphql", 
	  "make", 
    "markdown",
	  "racket", 
	  "regex", 
	  "java", 
	  "scala", 
	  "scss", 
	  "terraform", 
	  "toml", 
	  "tsx",
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
   rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
