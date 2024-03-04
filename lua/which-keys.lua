return {             -- Useful plugin to show you pending keybinds.
	'folke/which-key.nvim',
	event = 'VimEnter', -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require('which-key').register {
			['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
		}
	end
}
