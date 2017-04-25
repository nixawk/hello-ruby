
# str =~ obj -> fixnum or nil

# Match-If obj is a Regexp, use it as a pattern to match against str, and returns the
# position the match starts, or nil if there is no match. Otherwise, invokes obj.=~, passing
# str as an argument. The default =~ in Object returns nil.

# Note: str =~ regexp is not the same as regexp =~ str. Strings captured from named
# capture groups are assigned to local variables only in the second case.

"helloRuby" =~ /hello(.*)/
puts $1

# The =~ operator matches the regular expressions against a string, and it returns either the
# offset of the match from the string if it is found, otherwise nil.