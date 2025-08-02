return {
  {
    'rlane/pounce.nvim',
    cmd = { 'Pounce', 'PounceRepeat' },
    config = true,
    keys = {
      {
        's',
        function()
          require('pounce').pounce {}
        end,
        desc = 'pounce',
        mode = { 'n', 'x' },
      },
      {
        'S',
        function()
          require('pounce').pounce { do_repeat = true }
        end,
        desc = 'pounce',
      },
      {
        'S',
        function()
          require('pounce').pounce { input = { reg = '/' } }
        end,
        desc = 'pounce',
      },
      {
        'gs',
        function()
          require('pounce').pounce {}
        end,
        mode = { 'o' },
      },
    },
  },
}
