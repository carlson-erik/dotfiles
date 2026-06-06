return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					-- theme = "catppuccin-nvim",
					-- theme = "everforest",
					-- Use auto for "Tokyo Night"
					theme = "auto",
					component_separators = "",
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_c = {
						{ "filename", path = 1 }, -- path = 1: relative path, 2: absolute
					},
				},
			})
		end,
	},
}
