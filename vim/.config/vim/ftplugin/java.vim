setlocal foldmethod=syntax

" For indentation, I follow Oracle's Java Code Conventions: 
" https://www.oracle.com/technetwork/java/codeconventions-150003.pdf
"
" When pressing <Tab>, insert 4 spaces.  Every 8 spaces get turned into a tab.
setlocal tabstop=8 softtabstop=4 shiftwidth=4
setlocal noexpandtab

abbreviate <buffer> sysout System.out.println( );2<Left>s
abbreviate <buffer> syserr System.err.println( );2<Left>s
abbreviate <buffer> psvm public static void main(String[] args) {}

let java_highlight_java_io=1
let java_highlight_java_lang_ids=1
let java_ignore_javadoc=1
let java_mark_braces_in_parens_as_errors=1
let java_minlines=20

" A hack-y way for "java_ignore_javadoc" to take effect without having to place
" the variable declaration inside my vimrc (which is the recommended way).
"if exists("g:syntax_on")
"	syntax enable
"endif
