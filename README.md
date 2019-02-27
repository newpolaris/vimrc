# vimrc
vim setting

1. clone into ".vim" / "vimfiles"
2. create ".vimrc" / "_vimrc" file that include vim folder's ".vimrc" file
```
source .vim/.vimrc
```

```
source vimfiles/.vimrc
```
3. vundle 설치
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

```
실행
vim 명령 모드에서 :PluginInstall을 실행

아래와 같은 문제가 OSX 에서 발생시, vim 이 system 것으로 돌아간 것을 확인

ImportError: dlopen(/usr/local/Cellar/python/2.7.13/Frameworks/Python...

brew로 재설치
