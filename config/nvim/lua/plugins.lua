local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
	-- Theme monokai
  	"tanvirtin/monokai.nvim",

   	-- Treesitter-integration
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("config.nvim-treesitter")
		end,
	},

	-- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},

	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},

	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},

	-- LSP manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- Nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup()
		end,
		event = "VimEnter"
	},

	-- Copilot
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			print("Copilot loaded")
			require("copilot").setup()
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		config = function ()
			require("copilot_cmp").setup()
		end
	},

    -- bufferline
    {
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("config.nvim-bufferline")
        end,
        event = "BufRead",
    },

    -- auto-pairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },
})
