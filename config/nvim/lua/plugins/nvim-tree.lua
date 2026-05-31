return {
	"nvim-tree/nvim-tree.lua",
	init = function()
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
				update_root = true, -- optional: updates the root of the tree to the file's directory
			},
		})
	end,
}
