#!/usr/bin/ruby

# There are many ways to create or initialize an array.
# One way is with the new class method
names1 = Array.new(4)
names2 = Array.new(4, true)
puts names1
puts names2

names3 = [true, true, true, true]
puts names3

names4 = Array(0..3)
puts names4
