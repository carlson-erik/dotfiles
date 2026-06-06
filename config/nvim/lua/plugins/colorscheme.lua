return { -- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	-- "catppuccin/nvim",
	-- "neanias/everforest-nvim",
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Catppuccin
		-- require("catppuccin").setup()
		-- vim.cmd.colorscheme("catppuccin")

		-- Everforest
		-- require("everforest").setup({
		--	background = "medium",
		--	transparent_background_level = 0,
		--	italics = true,
		--	disable_italic_comments = false,
		--	inlay_hints_background = "dimmed",
		-- })
		--vim.cmd.colorscheme("everforest")

		-- Tokyo Night
		require("tokyonight").setup({
			style = "moon",
			light_style = "day",
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
			},
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
