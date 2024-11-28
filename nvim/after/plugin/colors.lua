function ColorThatThang(color)
	color = color or "rose-pine"
	vim.cmd ("colorscheme " .. color)
end

require("rose-pine").setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    styles = {
        bold = true,
        italic = true,
        transparency = true,
    },

})

ColorThatThang("rose-pine")
