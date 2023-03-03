function ColorMyPencils(color)
  color = color or "hybrid"
  vim.cmd.colorscheme(color)
  -- vim.g.material_theme_style = "palenight"
  -- vim.g.material_terminal_italics = true

  vim.cmd [[
    hi Normal ctermbg=none guibg=none
    hi NormalFloat ctermbg=none guibg=none
  ]]

  --[[
  --transparent background handled in transparent.lua
  vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
  --]]
end

ColorMyPencils()
