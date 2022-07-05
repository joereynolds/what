local M = {}

function M.get(text)
    local flags = {}

    for flag in string.gmatch(text, '%S+') do
        if flag:sub(1, 1) == '-' then
            table.insert(flags, flag)
        end
    end

    return flags
end

return M
