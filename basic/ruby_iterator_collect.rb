#!/usr/bin/ruby

# The collect method need not always be associated with a block. The collect
# method returns the entire collection, regardless of whether it is an array
# or a hash.

a = [1,2,3,4,5,6]
b = Array.new
b = a.collect
puts "b: #{b}"  # Enumerator
