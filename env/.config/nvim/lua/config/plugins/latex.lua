return {
    "lervag/vimtex",
    lazy = false,

    init = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.maplocalleader = ","
    end
}
