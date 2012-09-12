# Word Wrap

Write a module (or class, your call) called `Wrapper` that has a single function `wrap` that takes two arguments, a string and a column number. The function returns the string, but with line breaks inserted at just the right places to make sure that no line is longer than the column number. 

Attempt to break lines at word boundaries. Like a word processor, break the line by replacing the last space in a line with a newline (`"\n"`).