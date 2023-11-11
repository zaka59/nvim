vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
	
	use {'nvim-telescope/telescope-ui-select.nvim' }


    -- Gruvbox
    use { 'morhetz/gruvbox' }

	-- Better escape
	use { 'max397574/better-escape.nvim' }

	--Lualine
	use { 'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Nvim web devicons	
	use { 'nvim-tree/nvim-web-devicons' }

	-- Nvim Tree
	use { 'nvim-tree/nvim-tree.lua',
	  requires = { 'nvim-tree/nvim-web-devicons' },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}


	-- Mason and lspconfig
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}

	-- Indent Blankline
	use { 'lukas-reineke/indent-blankline.nvim' }
	
	-- MarkdownPreview
	use{ 'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end
	}

	-- VimSpector
	use { 'puremourning/vimspector' }

	-- GitSigns
	use { 'lewis6991/gitsigns.nvim' }

	--AutoCompletion and Snippets
	use { 'hrsh7th/nvim-cmp' } -- Autocompletion plugin
	use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim-cmp
	use { 'L3MON4D3/LuaSnip' } -- Snippets plugin
	use { 'saadparwaiz1/cmp_luasnip' } -- Snippets source for nvim-cmp

	--Commenter
	use { 'numToStr/Comment.nvim' }

	--Barbar
	--use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	
	--Copilot Config
	use { 'github/copilot.vim' }
	
	--Copilot Config
	use { "zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter"
	}

	-- Auto close brackets/pars...
	use { "windwp/nvim-autopairs" }

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter' }

	-- Vimtex
	use { 'lervag/vimtex' }

	-- Vim Latex Live Preview
	use { 'xuhdev/vim-latex-live-preview' }

	-- Tabline
	use {
	  'kdheepak/tabline.nvim',
	  config = function()
		require'tabline'.setup {enable = false}
	  end,
	  requires = {'nvim-lualine/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
	}

	-- Bufferline
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	-- Dressing
	use { 'stevearc/dressing.nvim' }

	-- Flutter Tools
	use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
		'nvim-tree/nvim-web-devicons'
    }

	}
	use { 'ThePrimeagen/vim-be-good' }	

	use { 'ThePrimeagen/git-worktree.nvim' }	

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
	end
	}

	use { 'f-person/git-blame.nvim' }


end)
