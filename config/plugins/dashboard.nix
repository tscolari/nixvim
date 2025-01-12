_ : {

  extraConfigLua = ''
    ;(function ()
      local theme = require('alpha.themes.startify')
      local version = vim.version().major .. '.' .. vim.version().minor .. '.' .. vim.version().patch
      theme.section.header.val = {
        [[                                   __                ]],
        [[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
        [[                                                     ]],
        [[                   ,_---~~~~~----._                  ]],
        [[            _,,_,*^____      _____``*g*\"*,          ]],
        [[           / __/ /'     ^.  /      \ ^@q   f         ]],
        [[          [  @f | @))    |  | @))   l  0 _/          ]],
        [[           \`/   \~____ / __ \_____/    \            ]],
        [[            |           _l__l_           I           ]],
        [[            }          [______]           I          ]],
        [[            ]            | | |            |          ]],
        [[            ]             ~ ~             |          ]],
        [[            |                            |           ]],
        [[             |                           |           ]],
        [[            ---------------------------------        ]],
        [[     Neovim Version: ]] .. version .. [[ (run :version for more details)]],
      }
      require('alpha').setup(theme.opts)
    end)()
  '';

}
