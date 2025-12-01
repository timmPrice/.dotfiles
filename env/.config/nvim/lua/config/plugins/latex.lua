return {
    "lervag/vimtex",
    lazy = false, -- Load immediately (needed for filetype detection)
    init = function()
        vim.g.maplocalleader = ","
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_method = "latexmk" -- optional, but often required
        vim.g.vimtex_compiler_latexmk = {
            build_dir = "build",                 -- optional, cleaner
            continuous = 1,                      -- auto recompile
            callback = 1,
            executable = "latexmk",
            options = {
                "-pdf",
                "-interaction=nonstopmode",
                "-synctex=1",
            },
        }
    end,
    ft = "tex", -- ensures it only activates on TeX files
}
