-- lua config/plugins/mini.lua
return {
    {
        'echasnovski/mini.nvim',
        config = function()
            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = true }
            local surround = require 'mini.surround'
            surround.setup {
                custom_surroundings = nil,
                highlight_duration = 250,
                mappings = {
                    add = 'sa',            -- Add surrounding in Normal and Visual modes
                    update_n_lines = 'sn', -- Update `n_lines`
                    silent = false,
                },
            }
            local comment = require 'mini.comment' -- gc = group comment in Visual mode
        end
    }
}
