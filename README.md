# vimfiles

My personal collection of Vim plugins and settings.

Included as submodules in `bundle/`:

- Vim-Jinja2-Syntax
- ag.vim
- bufexplorer
- ctrlp.vim
- matchit
- qmake-syntax-vim
- vim-coffee-script
- vim-fugitive
- vim-less
- vim-markdown
- vim-pathogen
- vim-qml
- vim-surround
- vimwiki
- vim-css3-syntax

## Requirements

- Git (for fugitive)

## Installation on Linux

Clone the repository:

```
git clone --recurse-submodule https://github.com/rudeb0t/vimfiles.git ~/.vim
```

Either create a `.vimrc` with the following:

```
source ~/.vim/vimrc
```

Or symlink `.vimrc` to `~/.vim/vimrc`.

If you're using GVim, do the same for `.gvimrc`.

## Installation on Windows

Ensure that you're in your home directory. For `cmd`:

```
cd %USERPROFILE%
```

For `powershell`:

```
cd ~
```

Clone the repository:

```
git clone --recurse-submodule https://github.com/rudeb0t/vimfiles.git
```

Create a `_vimrc` with the following:

```
source ~/vimfiles/vimrc
```

For GVim, create a `_gvimrc` with the following:

```
source ~/vimfiles/gvimrc
```
