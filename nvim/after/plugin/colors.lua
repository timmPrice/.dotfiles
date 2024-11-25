function ColorThatThang(color)
	color = color or "solarized-osaka"
	vim.cmd ("colorscheme " .. color)
end

ColorThatThang("solarized-osaka")
