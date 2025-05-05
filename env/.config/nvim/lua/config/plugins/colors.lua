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
      "forest-nvim/sequoia.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd("colorscheme sequoia") -- or 'sequoia-night' / 'sequoia-rise'
      end,
}
