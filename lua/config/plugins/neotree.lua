local M = {}

M.opts = {

	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				"__pycache__", -- python compiled binaries
				"env", -- python dependencies env folder
				"node_modules", -- js libraries
			},
			never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
				"node_modules",
				"env",
			},
		},
	},
}

return M
