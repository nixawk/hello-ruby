#!/usr/bin/ruby

# Ranges supports ranges and allows us to use ranges in a variety of ways:

#     Ranges as Sequences
#     Ranges as Conditions
#     Ranges as Intervals

# The first and perhaps most natural use of ranges is to express a sequence
# Sequences have a start point, an end point, and a way to produce successive
# values in the sequence.

puts "(1..5): #{Array(1..5)}"
puts "(1...5): #{Array(1...5)}"
puts "('a'..'d'): #{Array('a'..'d')}"
puts "('a'...'d'): #{Array('a'...'d')}"


