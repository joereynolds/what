local M = {}

--- Parses the output of a --help command or man page
-- @param table flags
-- @param string text
-- @return table
function M.parse(flags, text)
    print(text)
    print(flags)
end


return M
