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
                        theme = "ivy",
                        -- hidden = "true",
                    }
                }
            }

            vim.keymap.set("n", "<space>hp", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<space>df", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<space>en", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)
            vim.keymap.set("n", "<space>nn", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.expand("~/repos/Zettelkasten/")
                }
            end)
        end
    }

}
