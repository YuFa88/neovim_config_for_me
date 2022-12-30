# *y f* 的***neovim***和***wezterm***配置

---

玩转键盘，纵享丝滑编程体验！（建议使用wezterm虚拟终端）

wezterm是一个支持多平台的虚拟终端支持用lua语言进行配置，而neovim也支持lua语言进行配置。lua语言灵活易用，能让我们按自己的需求和审美进行个性化。

> 其中wezterm.lua不属于nvim配置，为wezterm的配置，win下放在wezterm.exe同级文件夹下，linux放在~.config下
>
> ginit.lua为GUI-nvim配置,建议使用neovide
<figure class="half">
<img src="https://gitee.com/yfyfgood/neovim-config-of-yf/raw/master/picture/nvim_in_wezterm.png" alt="nvim_in_wezterm" style="zoom:45%;" />
<img src="https://gitee.com/yfyfgood/neovim-config-of-yf/raw/master/picture/nvim_in_neovide.png" alt="nvim_in_neovide" style="zoom:25%;" />
</figure>


- 首先先安装neovim（各个平台安装方式不同）

- 安装一下Nerd fonts字体{https://www.nerdfonts.com/font-downloads}设置为终端字体

- 新建 .config/ 文件夹，克隆本github在该文件夹下，改名为nvim
  - win下需设置环境变量XDG_CONFIG_HOME和XDG_DATA_HOME
  
- 安装 Packer.nvim 插件管理器

-  安装`telescope` 插件，其依赖以下项目。
  - [BurntSushi/ripgrep](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2FBurntSushi%2Fripgrep)
  - [sharkdp/fd](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fsharkdp%2Ffd)
  
  ## 文件树

```c++
//文件目录构成
├── LICENSE
├── README.md
├── init.lua	//入口文件
└── lua
    ├── autocmds.lua
    ├── basic.lua	//基础配置
    ├── colorscheme.lua		//颜色主题
    ├── keybindings.lua		//快捷键
    ├── lsp		//lsp相关配置文件
    │   ├── cmp.lua		//代码自动补全
    │   ├── config		//文件夹包含各种语言服务器单独的配置文件。
    │   │   ├── bash.lua
    │   │   ├── emmet.lua
    │   │   ├── html.lua
    │   │   ├── json.lua
    │   │   ├── lua.lua
    │   │   ├── markdown.lua
    │   │   ├── pyright.lua
    │   │   ├── rust.lua
    │   │   └── ts.lua
    │   ├── formatter.lua		// 独立代码格式化功能。
    │   ├── null-ls.lua		//代码格式化
    │   ├── setup.lua		//内置 LSP 的配置。
    │   └── ui.lua		//对内置 LSP 功能增强和 UI 美化。
    ├── plugin-config		//插件配置文件
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
    ├── plugins.lua		//管理插件的安装和卸载
    └── utils		//对常见问题的修改，包括输入法切换，针对 windows 的特殊配置等
        ├── fix-yank.lua
        ├── global.lua
        └── im-select.lua	//自动切换输入法
```

## 快捷键

`alt+m`：打开文件树

`Ctrl+p/Ctrl+f`:查找文件/全局查找

`sh` ：水平分屏`sv` :垂直分屏 (Split Vertically） `sc` 关闭窗口 (Close) `so` 关闭其他 (Others),把 `Alt + h/j/k/l` 设置为在窗口之间跳转。

`Ctrl + 上下左右` 或 `s,` `s.` `sj` `sk` 调整窗口比例

`leader + t` 在下边窗口打开terminal，或 `leader + vt` 侧边窗口打开terminal。

在 visual 模式下可以`J` `K` 上下移动代码，又增加了连续 `>` 或 `<` 缩进代码。

`Ctrl+u` / `Ctrl + d` 来滚动代码

未完待续......