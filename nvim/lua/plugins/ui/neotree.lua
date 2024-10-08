-- Configure Neotree for directory listings.
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
				mappings = {
					["l"] = "open",
					["h"] = "close_node",
					["<space>"] = "none",
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					never_show = {
						".git",
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>fr", ":Neotree reveal<cr>") -- Space + f + r to reveal the current file.
	end,
}
