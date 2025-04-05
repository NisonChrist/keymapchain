Keymap = {}

local MODE = {
    NORMAL = 'n',
    INSERT = 'i',
    VISUAL = 'v',
    COMMAND = 'c',
}

local validateMode = function(mode)
    for key in pairs(MODE) do
        if key == mode then
            return true
        end
    end
    error("Invalid mode: " .. mode .. ". Expected one of: " .. table.concat(MODE, ", "))
end

Keymap.whenInMode = function(mode)
    validateMode(mode)
    local map = function(key)
        local to = function(keyOrCommand)
            vim.keymap.set(MODE[mode], key, keyOrCommand)
        end
        return { to = to }
    end
    return {
        map = map,
    }
end

return Keymap
