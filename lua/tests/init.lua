require("python_nvim.builtin").runPythonBlock(1)
require("harpoon.term").gotoTerminal(1)
-- local index = vim.api.nvim_exec("echo search('error')", 1)
-- not working
-- P(vim.api.nvim_buf_get_lines(0, 0, -1, 0))
-- print(index)
-- print(vim.api.nvim_get_current_buf())
-- vim.cmd[[norm!/error]]
-- if index == "0" then
-- 	vim.cmd[[q]]
-- end
