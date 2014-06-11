" 1 Echoing Messages
" http://learnvimscriptthehardway.stevelosh.com/chapters/01.html

"help echo
"help echom
" :help something | only
" use <C-]> and <C-o>

" ec[ho] {expr1}
echo "Hello, world!"
:echo "hello,world"

" echom[sg] {expr1}
echom "Hello again, world!"

" message-histroy 200
"messages

" g< command can be used to see previouse command output
"
" :ls
" <Enter>
" :g<
