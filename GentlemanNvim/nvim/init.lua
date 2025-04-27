-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.wrap = true

vim.api.nvim_create_user_command("CodeCompanionFull", function()
  vim.cmd("CodeCompanionChat")
  vim.cmd("only")
end, {})
-- Detecta automáticamente la ruta del Node.js activo en nvm
-- local handle = io.popen("nvm which current")
-- if handle then
--   local node_path = handle:read("*a"):gsub("\n", ""):gsub("/bin/node", "/bin")
--   handle:close()
--   vim.env.PATH = node_path .. ":" .. vim.env.PATH
-- end
