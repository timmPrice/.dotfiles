return {
    -- "timmPrice/sitruuna.vim",
    -- "aditya-azad/candle-grey",
    "ellisonleao/gruvbox.nvim",
    config = function()
        require("gruvbox").setup({
            transparent_mode = true, 
        }) 
        vim.cmd.colorscheme "gruvbox"
    end
    -- "rose-pine/neovim",
    -- name = "rose-pine",
    -- config = function()
    --     require("rose-pine").setup({
    --         variant = "moon",
    --         styles = {
    --             transparency = true,
    --         },
    --     })
    --     vim.cmd("colorscheme rose-pine")
    -- end
}
