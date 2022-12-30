# ***neovim*** and ***wezterm*** configuration of yf

---

 Play with the keyboard and enjoy the silky programming experience! (We recommend that you use **wezterm** virtual terminal)

 **wezterm** is a multi-platform virtual terminal that supports configuration in **lua language**, while **neovim** also supports configuration in lua language. **lua language** is flexible and easy to use, which enables us to be personalized according to our own needs and aesthetics.

> wezterm.lua does not belong to the nvim configuration. It is the wezterm configuration. Under win, it is placed in the wezterm.exe folder, and linux is placed in ~.config
>
> ginit.lua is configured for GUI-nvim. We recommend that you use neovide.
<figure class="half">
<img src="https://gitee.com/yfyfgood/neovim-config-of-yf/raw/master/picture/nvim_in_wezterm.png" alt="nvim_in_wezterm" style="zoom:45%;" />
<img src="https://gitee.com/yfyfgood/neovim-config-of-yf/raw/master/picture/nvim_in_neovide.png" alt="nvim_in_neovide" style="zoom:25%;" />
</figure>


-  Install **neovim** first (different installation methods for each platform)
-  Install **Nerd fonts font** {https://www.nerdfonts.com/font-downloads}Set to terminal font
- Create a. **config/**folder, clone the github in this folder, and rename it nvim 
- - environment variables XDG_CONFIG_HOME and XDG_DATA_HOME must be set in win.
- Install **Packer.nvim** plug-in manager
-  Installation `**telescope** `the plug-in, which depends on the following items. 

-  [BurntSushi/ripgrep](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2FBurntSushi%2Fripgrep) 

-  [sharkdp/fd](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fsharkdp%2Ffd) 

- 

  ## File tree


```c++
//File Directory composition
├── LICENSE
├── README.md
├── init.lua	//Entry file
└── lua
    ├── autocmds.lua
    ├── basic.lua	//Basic configuration
    ├── colorscheme.lua		//Color theme
    ├── keybindings.lua		//Shortcut keys
    ├── lsp		//lsp-related configuration files
    │   ├── cmp.lua		//Automatic code completion
    │   ├── config		//Separate configuration files for servers in various languages.
    │   │   ├── bash.lua
    │   │   ├── emmet.lua
    │   │   ├── html.lua
    │   │   ├── json.lua
    │   │   ├── lua.lua
    │   │   ├── markdown.lua
    │   │   ├── pyright.lua
    │   │   ├── rust.lua
    │   │   └── ts.lua
    │   ├── formatter.lua		// Independent code formatting.
    │   ├── null-ls.lua		//Code formatting
    │   ├── setup.lua		//The configuration of the built-in LSP.
    │   └── ui.lua		//Enhance built-in LSP features and beautify the UI。
    ├── plugin-config		//Plug-in configuration file
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
    ├── plugins.lua		//Manage the installation and uninstallation of plug-ins
    └── utils		//Input Method switching, special configuration for windows, etc.
        ├── fix-yank.lua
        ├── global.lua
        └── im-select.lua	//Automatic switching input method
```

## shortcut keys

`alt+m`：Open the file tree
`Ctrl+p/Ctrl+f`:Search for files/global search
`SH `: horizontal split screen `SV `: vertical Split screen (Split Vertically) `SC `Close `so `close Others and put `Alt + h/j/k/l `set to jump between windows.
`Ctrl + up, down, left and right `or `s ` `s. ` `SJ ` `sk `adjust window scale
`leader + t `open the terminal in the lower window, or `leader + vt `the side window opens the terminal.
In visual mode `J ` `K `move the code up and down, and add continuous `> `or `< `the indentation code. 
`Ctrl+u `/ `Ctrl + d `to scroll the code

To be continued......