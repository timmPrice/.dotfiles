vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cv", "<CMD>Oil<Cr>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("v", "<C-j>", "<C-d>zz")
vim.keymap.set("v", "<C-k>", "<C-u>zz")

vim.keymap.set("v", "<C-j>", "<C-d>zz")
vim.keymap.set("v", "<C-k>", "<C-u>zz")

-- deleted text doesn't get added to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- window splits
vim.keymap.set("n", "<C-v>", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<C-h>", "<cmd>split<CR>")

-- flip between files
vim.keymap.set("n", "<C-o>", "<C-^>", { noremap = true, silent = true })
vim.cmd("unmap <leader>hp")

-- change windows
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })

-- tmux sessionizer
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- find and replace
vim.keymap.set("n", "<leader>s", function()
    local find = vim.fn.input("Find: ")
    local replace = vim.fn.input("Replace with: ")
    vim.cmd(string.format("%%s/%s/%s/g", vim.fn.escape(find, "/"), vim.fn.escape(replace, "/")))
end)

vim.keymap.set("n", "<C-s>", "<C-v>")
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- new save command
vim.api.nvim_create_user_command("W", "w", {})
