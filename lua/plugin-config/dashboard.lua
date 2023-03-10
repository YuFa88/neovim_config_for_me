local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("ζ²‘ζζΎε° dashboard")
  return
end

db.custom_footer = {
  "πhttps://github.com/YuFa88/neovim_config_for_meπ",
}

db.custom_center = {
  {
    icon = "ο‘  ",
    desc = "PackerSync                          ",
    action = "PackerSync",
  },
  {
    icon = "ο‘  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "ο€  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "ο   ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
  {
    icon = "ξ  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
  -- {
  --   icon = "ξ  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "ξ«  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  --{
  --  icon = "ξ  ",
  --  desc = "Edit init.lua                       ",
  --  action = "edit ~/.config/nvim/init.lua",
 -- },
   {
     icon = "ο  ",
     desc = "Find file                           ",
     action = "Telescope find_files",
   },
  -- {
  --   icon = "ο  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}


db.custom_header = {

[[                 β¬β¬β¬β¬.β.β¬β¬β¬β¬                               ]],
[[    β¬ β¬βββ    γ γβββββββ                    ββββββ       ]],
[[γ  ββ¬βββ€        γβ’β€ βββββββββββββ’β€          β β¬β β       ]],
[[γ   β΄ β         γβjust  do  itββββββ¬        ββββββ       ]],
[[γ               γβ₯βββββββββββ€                            ]],
[[γ               γβββ©βββ©ββ                                ]],
[[  ββββ   ββββββ   ββββββββββ   ββββ     βββ   βββββββββββ  ]],
[[  βββββ  ββββββ   βββββββββββ βββββ     ββββ ββββββββββββ  ]],
[[  ββββββ ββββββ   ββββββββββββββββββββββββββββββ ββββββ    ]],
[[  ββββββββββββββ ββββββββββββββββββββββββ βββββ  ββββββ    ]],
[[  βββ ββββββ βββββββ ββββββ βββ βββ        βββ   βββ       ]],
[[  βββ  βββββ  βββββ  ββββββ     βββ        βββ   βββ       ]],
[[                                                           ]],

    }
