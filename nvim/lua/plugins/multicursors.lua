-- Enable multicursor support.
-- https://github.com/smoka7/multicursors.nvim
return {
	"smoka7/multicursors.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvimtools/hydra.nvim",
	},
	opts = {},
	cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
	keys = {
		{
			mode = { "v", "n" },
			"<leader>m",
			"<cmd>MCunderCursor<cr>",
			desc = "Create a selection for selected text or word under the cursor",
		},
	},
}
