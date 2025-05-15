vim.api.nvim_create_user_command("TypstPreview", function()
  local input = vim.api.nvim_buf_get_name(0)
  if not input:match("%.typ$") then
    print("Not a Typst file!")
    return
  end

  local filename = vim.fn.fnamemodify(input, ":t:r")  -- basename without extension
  local pdf_dir = "pdf"
  local pdf_path = pdf_dir .. "/" .. filename .. ".pdf"

  -- Create output directory if it doesn't exist
  vim.fn.mkdir(pdf_dir, "p")

  -- Start typst watch
  local cmd = string.format("typst watch %s %s &", input, pdf_path)
  vim.fn.jobstart(cmd, { detach = true })

  -- Open Zathura
  vim.fn.jobstart({ "zathura", pdf_path }, { detach = true })
end, {})
