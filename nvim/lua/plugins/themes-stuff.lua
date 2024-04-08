local themes = { 'nyoom-engineering/oxocarbon.nvim', 'catppuccin/nvim', 'EdenEast/nightfox.nvim',
  'alexmozaidze/palenight.nvim', 'navarasu/onedark.nvim', 'rose-pine/neovim' }

local returnTable = {}
for i, v in ipairs(themes) do
  table.insert(returnTable, {
    v,
    lazy = false,
    priority = 1000 - i
  })
end

return returnTable
