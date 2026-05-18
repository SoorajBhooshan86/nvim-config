local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })

map("n", "<leader>kk", "<cmd>Telescope keymaps<cr>", { desc = "Show all keymaps" })

map("n", "<leader>sd", "<cmd>Telescope diagnostics<cr>", { desc = "Project diagnostics" })
map("n", "<leader>se", "<cmd>Telescope diagnostics severity=ERROR<cr>", { desc = "Project errors" })

map("n", "grr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references", nowait = true })

map("n", "<leader>e", function()
	require("mini.files").open()
end, { desc = "Open file explorer" })

map("n", "<leader>fe", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "Open file explorer at current file" })

local builtin = require("telescope.builtin")

map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Grep in project" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

map("n", "gr", builtin.lsp_references, { desc = "Find references" })
map("n", "gd", builtin.lsp_definitions, { desc = "Go to definition" })
map("n", "gi", builtin.lsp_implementations, { desc = "Go to implementation" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Continue" })
map("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step over" })
map("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step into" })
map("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Terminate" })
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle DAP UI" })

map("n", "<leader>tt", "<cmd>TodoTelescope keywords=TODO<cr>", { desc = "Find TODOs" })
map("n", "<leader>tf", "<cmd>TodoTelescope keywords=FIX<cr>", { desc = "Find FIXs" })
map("n", "<leader>tn", "<cmd>TodoTelescope keywords=NOTE<cr>", { desc = "Find NOTEs" })
map("n", "<leader>ts", "<cmd>TodoTelescope keywords=TEST<cr>", { desc = "Find TESTs" })
