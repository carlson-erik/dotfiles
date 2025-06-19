return { -- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	-- "folke/tokyonight.nvim",
	"catppuccin/nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Catppuccin handles theme matching for us
		vim.cmd.colorscheme("catppuccin")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
