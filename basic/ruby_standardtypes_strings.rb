
# %q and %Q start delimited single- and double-quoted strings.

# The character following the 'q' and 'Q' is the delimiter.
# If it is an opening bracket, brace, parenthesis, or less-than sign,
# the string is read util the matching close symbol is found.
# Otherwise the string is read util the next occurrence of the same delimiter.

stringone = %q<single-quoted string\ntest>
stringtwo = %Q{double-quoted-string\ntest}

puts stringone
puts stringtwo