# vimrc
vim setting

1. clone into ".vim" / "vimfiles"
```
git clone https://github.com/newpolaris/vimrc ~/.vim
```
2. create ".vimrc" / "_vimrc" file that include vim folder's ".vimrc" file
```
source ~/.vim/.vimrc
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

vim 자체는 brew에선 답이 없으므로 (옵션들이 존재하지 않는다, 그런데 생깐다) 고통받지 말고 모든 옵션 포함된
https://github.com/macvim-dev/macvim/releases 를 받아서 링크를 걸자
그냥 vim 은 rootless 보안 때문에 이름을 바꿀수 없다.
https://nolboo.kim/blog/2016/09/16/vim-8-upgrade/
brew 설치후 거기에 링크 원본을 바꾸자
vi
```
brew install macvim
brew link --verwrite macvim
cd /usr/local/bin/
rm vim gvim vi vimdiff mvim gvim
ln -s /Applications/MacVim.app/Contents/bin/vi vim
ln -s /Applications/MacVim.app/Contents/bin/vim vim
ln -s /Applications/MacVim.app/Contents/bin/gvim mvim
```
