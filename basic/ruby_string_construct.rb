
# There are three more ways to construct string literals: %q, %Q, and ``
#

puts %q/general single-quoted string/
puts %Q!general double-quoted string!
puts %Q{Second/day: #{24*60*60}}

# The character following the ``q'' and ``Q'' is the delimiter. If it is an
# opening bracket, brace, parenthesis, or less-than sign, the string is read
# util the matching close symbol is found. Otherwise the string is read util
# the next occurrence of the same delimiter.

aString= <<-STRING1
This is my string
STRING1

print "#{aString.class}: #{aString}"

aString= <<-STRING1, <<-STRING2
This is my first string.
STRING1
This is my second string.
STRING2
print aString  # sString is an Array
