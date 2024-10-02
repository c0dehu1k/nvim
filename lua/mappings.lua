require "nvchad.mappings"

local map = vim.keymap.set

-- Debugger Setup
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Debug Add breakpoint to current line" })
map("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Debug Continue" })
map("n", "<leader>dn", "<cmd>DapStepOver<CR>", { desc = "Debug StepOver" })
map("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Debug StepInto" })
map("n", "<leader>do", "<cmd>DapStepOut<CR>", { desc = "Debug StepOut" })
map("n", "<leader>dr", "<cmd>DapToggleRepl<CR>", { desc = "Debug Toggle Repl" })
map("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Debug Terminate" })
map("n", "<leader>dus", function () local dapui = require("dapui")
        dapui.setup()
        dapui.toggle()
      end, { desc = "Open DAP UI" })

-- For Python
map("n", "<leader>dpr", function() require('dap-python').test_method() end, { desc = "Debug Python Run" })


 -- For Golang
map("n", "<leader>dgt", function() require('dap-go').debug_test() end, { desc = "Debug Golang Test" })
map("n", "<leader>dgl", function() require('dap-go').debug_last() end, { desc = "Debug Golang Last Test" })

-- For Golang Json and yaml formatting

map("n", "<leader>gsj","<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
map("n", "<leader>gsy","<cmd> GoTagAdd yaml <CR>", { desc = "Add yaml struct tags" })
