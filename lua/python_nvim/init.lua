local M = {}

M.setup = function(config)
	config = config or {}
	M._config = M._config or {
		source = ""
	}
	M._config = vim.tbl_deep_extend("force", M._config, config)
end


return M

