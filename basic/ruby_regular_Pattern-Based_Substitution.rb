
# Sometimes finding a pattern in a string is good enough. However, there are
# times when you need to change things based on a pattern match.

# The methods String#sub and String#gsub look for a portion of a string
# matching their first argument and replace it with their second argument.
# (String#sub) performs one replacement, while String#gsub replaces every
# occurrence of the match. Both routines return a new copy of the String
# containing the substitutions. Mutator versions String#sub! and String#gsub!
# modify the original string.

a = 'the quick brown fox'
puts a.sub(/[aeiou]/, '*')
puts a.gsub(/[aeiou]/, '*')
puts a.sub(/\s\S+/, '')
puts a.gsub(/\s\SS+/, '')

# The second argument to both functions can be either a String or a block. If
# a block is used, the block's value is substituted into the String.

b = 'the quick brown fox'
puts b.sub(/^./) { $&.upcase }
puts b.gsub(/[aeiou]/) { $&.upcase }
