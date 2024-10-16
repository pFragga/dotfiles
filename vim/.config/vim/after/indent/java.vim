" "Four spaces should be used as the unit of indentation.  The exact
" construction of the indentation (spaces vs. tabs) is unspecified.  Tabs must
" be set every 8 spaces (not 4)."
" -- Oracle's Java Code Conventions
"
" What I understand from this is: mixed indentation is allowed as long as tabs
" count for 8 spaces and the regular indentation is 4 spaces.
"
" Personally, I find it saner to just use tabs for indentation and spaces for
" alignment paired with the default tabstop of 8, but Java code does tend to
" nest a lot more than, for example, C/C++.
setlocal tabstop=8 softtabstop=4 shiftwidth=4
setlocal expandtab
