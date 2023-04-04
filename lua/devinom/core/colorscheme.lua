local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
  print("Colorscheme not found!")
  return
end

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
end
ColorMyPencils()
