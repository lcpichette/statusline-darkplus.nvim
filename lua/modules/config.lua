-- TODO: UNIMPLEMENTED FEATURE - Implement more extensive capabilities to configure statusline and verify configs.
local M = {}

local _config = {}
-- local _user_config = {}

local function get_defaults()
	return {
		options = {
			lsp_client = 'native',
		},
	}
end

local function merge(defaults, user_config)
	if user_config and type(user_config) == 'table' then
		user_config = vim.tbl_deep_extend('force', defaults, user_config)
	end
	return user_config
end

function M.set(user_config)
	user_config = user_config or {}
	local defaults = get_defaults()
	-- _user_config = user_config
	_config = merge(defaults, user_config)
	return _config
end
