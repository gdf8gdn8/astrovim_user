# astrovim_user
astrovim user config

see https://astronvim.com/ getting started
Make backup
```shell
mv ~/.config/nvim ~/.config/nvim.bak
```
Clean neovim folders (Optional but recommended)
```shell
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```
Clone the repository
```shell
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim
```

download config 
```shell
git clone https://github.com/gdf8gdn8/astrovim_user.git ~/.config/nvim/lua/user
```
or 
```shell
git clone git@github.com:gdf8gdn8/astrovim_user.git ~/.config/nvim/lua/user
```

⚡ Requirements - copied from astrovim
Nerd Fonts (Optional with manual intervention: See Recipes/Customizing Icons)   
Neovim v0.8+ (Not including nightly)  
Tree-sitter CLI (Note: This is only necessary if you want to use auto_install feature with Treesitter)   
A clipboard tool is necessary for the integration with the system clipboard (see :help clipboard-tool for supported solutions)  
Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using)  
Optional Requirements:  
ripgrep - live grep telescope search (<leader>fw)   
lazygit - git ui toggle terminal (<leader>tl or <leader>gg)  
go DiskUsage() - disk usage toggle terminal (<leader>tu)  
bottom - process viewer toggle terminal (<leader>tt)   
Python - python repl toggle terminal (<leader>tp)   
Node - Node is needed for a lot of the LSPs, and for the node repl toggle terminal (<leader>tn)   
