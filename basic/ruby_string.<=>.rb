
# string <=> other_string -> -1, 0, +1 or nil

# Comparison - Returns -1, 0, +1 or nil depending on whether string is less than, equal to,
# or greater than other_string.

# nil is returned if the two values are incomparable.

# If the strings are of different lengths, and the strings are equal when compared up to the
# shortest length, then the longer string is considered greater than the shorter one.


puts "abcdef" <=> "abcde"     #=> 1
puts "abcdef" <=> "abcdef"    #=> 0
puts "abcdef" <=> "abcdefg"   #=> -1
puts "abcdef" <=> "ABCDEF"    #=> 1