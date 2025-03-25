return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function()
            require("telescope").setup {
                pickers = {
                    find_files = {
                        theme = "dropdown",
                        -- hidden = "true",
                    }
                }
            }

            vim.keymap.set("n", "<space>hp", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<space>df", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<space>en", function()
                require('telescope.builtin').find_files {
                    cwd = "~/repos/.dotfiles/env/.config/nvim/"
                }
            end)
            vim.keymap.set("n", "<space>nn", function()
                require('telescope.builtin').find_files {
                    cwd = "~/repos/notes",
                    prompt_title = "notes",
                    hidden = "true",
                }
            end)
        end
    }

}
