 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#131414',
    base02 = '#1d1e1e',
    base03 = '#8c9293',
    base04 = '#c2c7c9',
    base05 = '#e4e2e2',
    base06 = '#e4e2e2',
    base07 = '#e4e2e2',
    base08 = '#ffb4ab',
    base09 = '#ffffff',
    base0A = '#c1c8ca',
    base0B = '#ffffff',
    base0C = '#cec2d7',
    base0D = '#b6cad0',
    base0E = '#c1c8ca',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e4e2e2',          bg = '#000000' })
  hi('TelescopeBorder',         { fg = '#8c9293',             bg = '#000000' })
  hi('TelescopePromptNormal',   { fg = '#e4e2e2',          bg = '#000000' })
  hi('TelescopePromptBorder',   { fg = '#8c9293',             bg = '#000000' })
  hi('TelescopePromptPrefix',   { fg = '#ffffff',             bg = '#000000' })
  hi('TelescopePromptCounter',  { fg = '#c2c7c9',  bg = '#000000' })
  hi('TelescopePromptTitle',    { fg = '#000000',             bg = '#ffffff' })
  hi('TelescopePreviewTitle',   { fg = '#000000',             bg = '#c1c8ca' })
  hi('TelescopeResultsTitle',   { fg = '#000000',             bg = '#ffffff' })
  hi('TelescopeSelection',      { fg = '#e4e2e2',          bg = '#1d1e1e' })
  hi('TelescopeSelectionCaret', { fg = '#ffffff',             bg = '#1d1e1e' })
  hi('TelescopeMatching',       { fg = '#ffffff',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
