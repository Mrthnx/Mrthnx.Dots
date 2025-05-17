-- Keymaps Rest run
vim.keymap.set("n", "..", ":Rest run<CR>", { noremap = true, silent = true })

-- vim.keymap.set(
--   "n",
--   "..",
--   "<cmd>lua require('kulala').run()<cr>",
--   { noremap = true, silent = true, desc = "Execute the request" }
-- )

-- screenshot
vim.keymap.set("v", "<leader>0", ":SSSelected<CR>")
vim.keymap.set("v", "<leader>1", ":VisualCodeShot<CR>")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua Add any additional keymaps here

-- Position cursor at the middle of the screen after scrolling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Map Ctrl+c to escape from other modes
vim.keymap.set({ "i", "n", "v" }, "<C-c>", [[<C-\><C-n>]])

-- Quick semi
vim.keymap.set("n", "<Leader>,", "$a,<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>;", "$a;<Esc>", { noremap = true, silent = true })
-- Screen Keys
vim.keymap.set({ "n" }, "<leader>uk", "<cmd>Screenkey<CR>")

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

-- add 'word'
vim.keymap.set("n", "<leader>q'", "ciw''<Esc>P", { noremap = true, silent = true })
vim.keymap.set("n", '<leader>q"', 'ciw""<Esc>P', { noremap = true, silent = true })

-- copy word
vim.keymap.set("n", "<leader>cp", "ciw<Esc>u", { noremap = true, silent = true })
----- OBSIDIAN -----
vim.keymap.set("n", "<leader>oc", "<cmd>ObsidianCheck<CR>", { desc = "Obsidian Check Checkbox" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
vim.keymap.set("n", "<leader>oo", "<cmd>Obsidian Open<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

-- delete word without clipboard
vim.keymap.set("n", "<leader>z", '"_diw', { noremap = true, silent = true })

-- delete line without clipboard in mode visual
vim.keymap.set("v", "<leader>z", '"_d', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sA", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-----  OIL -----
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one --
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

-- Disable key mappings in insert mode
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })
