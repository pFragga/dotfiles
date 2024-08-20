setlocal foldmethod=syntax
setlocal tabstop=4 softtabstop=4 shiftwidth=4

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
if exists("g:syntax_on")
	syntax enable
endif
