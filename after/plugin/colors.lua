function ColorMyPencils(color)
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)

  -- vim.cmd [[
  --   hi Normal ctermbg=none guibg=none
  --   hi NormalFloat ctermbg=none guibg=none
  -- ]]

  --[[
  --transparent background handled in transparent.lua
  vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
  --]]
end

ColorMyPencils()
