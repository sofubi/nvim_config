local lush = require 'lush'
local hsluv = require('lush').hsluv

return lush(function()
  return {
    Normal { bg = hsluv(20, 20, 50), fg = hsluv(200, 50, 10) },
  }
end)
