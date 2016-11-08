" OmniCppComplete initialization
call omni#cpp#complete#Init()

" make program override
"set makeprg=g++\ -o\ bin/%<\ %\ --std=c++14
set makeprg=g++\ -D\ _DEBUG\ -o\ bin/%<\ %\ -g\ --std=c++14\ &&\ bin/%<
