return {
	'nvim-lua/plenary.nvim',
	'mbbill/undotree',
	'idanarye/vim-merginal',
	'elianiva/telescope-npm.nvim',
	'nvim-tree/nvim-web-devicons',
	'preservim/nerdtree',
	{
		'ahmedkhalf/project.nvim',
		config = function()
			require('project_nvim').setup({})
		end
	},
	{
		'jose-elias-alvarez/typescript.nvim',
		config = function()
			require('typescript').setup({
				disable_commands = false, -- prevent the plugin from creating Vim commands
				debug = false, -- enable debug logging for commands
				go_to_source_definition = {
					fallback = true, -- fall back to standard LSP definition on failure
				},
			})
		end
	},

}
