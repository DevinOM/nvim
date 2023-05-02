local status, _ = pcall(vim.cmd, "colorscheme rose-pine-moon")
if not status then
	print("Colorscheme not found!")
	return
end

function CMP(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- make gitsigns plugin bar transparent
	vim.cmd([[highlight GitSignsAdd guibg=NONE]])
	vim.cmd([[highlight GitSignsChange guibg=NONE]])
	vim.cmd([[highlight GitSignsDelete guibg=NONE]])
end
CMP()
