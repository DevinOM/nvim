-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- make gitsigns backgroud transparent
-- vim.cmd("hightlight GitSignsAdd guibg=NONE")
-- vim.cmd("hightlight GitSignsChange guibg=NONE")
-- vim.cmd("hightlight GitSignsDelete guibg=NONE")

-- configure/enable gitsigns
gitsigns.setup()
