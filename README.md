# myVIMsetup
## Firstly, Setup Vundle
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
## Secondly, fetch the file to ~/, and rename it to .vimrc

## Activate vundle and install the plugins:

Open vim, and type in 
```
:PluginInstall
```


# For the cheat sheet:

https://vim.rtorr.com/lang/zh_cn/

# Ctags
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

