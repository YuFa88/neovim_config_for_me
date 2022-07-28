# *y f* 的***neovim***个人配置

---

玩转键盘，纵享丝滑编程体验！（建议使用wezterm虚拟终端）

> 其中wezterm.lua不属于nvim配置，为wezterm的配置，win下放在wezterm.exe同级文件夹下，linux放在~.config下
>
> ginit.lua为GUI-nvim配置,建议使用neovide

- 首先先安装neovim（各个平台安装方式不同）
- 安装一下Nerd fonts字体{https://www.nerdfonts.com/font-downloads}设置为终端字体
- 新建 .config/ 文件夹，克隆本gitee在该文件夹下，改名为nvim
  - win下需设置环境变量XDG_CONFIG_HOME和XDG_DATA_HOME
- 安装 Packer.nvim 插件管理器
-  安装`telescope` 插件，其依赖以下项目。
  - [BurntSushi/ripgrep](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2FBurntSushi%2Fripgrep)
  - [sharkdp/fd](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fsharkdp%2Ffd)

```
文件目录构成
├── LICENSE
├── README.md
├── init.lua
└── lua
    ├── autocmds.lua
    ├── basic.lua
    ├── colorscheme.lua
    ├── keybindings.lua
    ├── lsp
    │   ├── cmp.lua
    │   ├── config
    │   │   ├── bash.lua
    │   │   ├── emmet.lua
    │   │   ├── html.lua
    │   │   ├── json.lua
    │   │   ├── lua.lua
    │   │   ├── markdown.lua
    │   │   ├── pyright.lua
    │   │   ├── rust.lua
    │   │   └── ts.lua
    │   ├── formatter.lua
    │   ├── null-ls.lua
    │   ├── setup.lua
    │   └── ui.lua
    ├── plugin-config
    │   ├── bufferline.lua
    │   ├── comment.lua
    │   ├── dashboard.lua
    │   ├── gitsigns.lua
    │   ├── indent-blankline.lua
    │   ├── lualine.lua
    │   ├── nvim-autopairs.lua
    │   ├── nvim-tree.lua
    │   ├── nvim-treesitter.lua
    │   ├── project.lua
    │   ├── surround.lua
    │   ├── telescope.lua
    │   ├── toggleterm.lua
    │   ├── vimspector.lua
    │   └── which-key.lua
    ├── plugins.lua
    └── utils
        ├── fix-yank.lua
        ├── global.lua
        └── im-select.lua
```



未完待续......