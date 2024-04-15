-- Configure auto-closing for brackets and tags.
-- https://github.com/m4xshen/autoclose.nvim
return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			keys = {
				disabled_filetypes = {},
			},
		})
	end,
}
