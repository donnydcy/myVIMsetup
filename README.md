# myVIMsetup
## Setup Plugins
1. Firstly, Setup Vundle
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
2. Secondly, fetch the file to ~/, and rename it to .vimrc

3. Activate vundle and install the plugins:

Open vim, and type in 
```
:PluginInstall
```

## Setup Ctags
1. Execute in the current project folder:

```bash
$ ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
```

2. Execute outside the program to index /usr/include:

```bash
$ ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /usr/include
```

3. Don't forget to specifiy the tag files in ~/.vimrc
```
set tags=/tag/directory/1,tag/directory/2
```

## For the cheat sheet:

https://vim.rtorr.com/lang/zh_cn/
