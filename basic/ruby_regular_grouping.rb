
# You can use parenttheses to group terms within a regular expression.
# Everything within the group is treated as a single regular expression.

# Parentheses are also used to collect the results of pattern matching. Ruby
# counts opening parentheses, and for each stores the result of the partial
# match between it and the corresponding closing parenthesis. You can use this
# partial match both within the remainder of the pattern and in your Ruby
# program. Within the pattern, the sequence \1 refers to the match of the
# first group, \2 the second group, and so on. Outside the pattern, the
# special variables $1, $2, and so on, serve the same purpose.


aString = 'abc abd ABC ABD abe'
aString =~ /([abcde]{3}).*([abcde]{3}).*([abcde]{3})/
puts $&
puts $1
puts $2
puts $3
