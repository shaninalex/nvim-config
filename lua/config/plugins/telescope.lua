local M = {}

function M.setup()
	local telescope = require("telescope")
	local builtin = require("telescope.builtin")

	local file_ignore_patterns = {
		"yarn%.lock",
		"node_modules/",
		"%.next",
		"%.git/",
		"%.gitlab/",
		"build/",
		"target/",
		"package%-lock%.json",
	}

	telescope.setup({
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	})

	-- load extensions (don’t error if missing)
	pcall(telescope.load_extension, "fzf")
	pcall(telescope.load_extension, "ui-select")

	-- keymaps
	vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
	vim.keymap.set("n", "<leader>sf", function()
		builtin.find_files({
			file_ignore_patterns = file_ignore_patterns,
		})
	end, { desc = "[S]earch [F]iles" })
	vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
	vim.keymap.set("n", "<leader>sg", function()
		builtin.live_grep({
			file_ignore_patterns = file_ignore_patterns,
		})
	end, { desc = "[S]earch by [G]rep" })
	vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
	vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
	vim.keymap.set(
		"n",
		"<leader>/",
		builtin.current_buffer_fuzzy_find,
		{ desc = "[/] Fuzzily search in current buffer" }
	)
end

return M
