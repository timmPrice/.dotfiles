return {
    -- "timmPrice/sitruuna.vim",
    -- "aditya-azad/candle-grey",
    -- "ellisonleao/gruvbox.nvim",
    -- config = function()
    --     require("gruvbox").setup({
    --         transparent_mode = true, 
    --     }) 
    --     vim.cmd.colorscheme "gruvbox"
    -- end
    
    "ramojus/mellifluous.nvim",
    config = function()
        require("mellifluous").setup({
            styles = {
                main_keywords = {bold = true} 
            },
        })
        vim.opt.background = "light"
        vim.cmd.colorscheme "mellifluous"
    end,
}
