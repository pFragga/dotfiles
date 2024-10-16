if has("folding")
	setlocal foldmethod=syntax

	" Any further nesting should just be refactored.
	setlocal foldnestmax=5
endif

abbreviate <buffer> sysout System.out.println( );2<Left>s
abbreviate <buffer> syserr System.err.println( );2<Left>s
abbreviate <buffer> psvm public static void main(String[] args) {}
abbreviate <buffer> brdr BufferedReader
