#!/usr/bin/ruby

# Elements can be selected from an array according to criteria defined in a
# block. The selection can happen in a destructive or a non-destructive
# manner.
# While the destructive operations will modify they were called on, the
# non-destructive will modify the array they were called on, the
# non-destructive methods usually return a new array with the selected
# elements, but leave the original array unchanged.

arr = [1, 2, 3, 4, 5, 6]

puts arr.select { |a| a > 3 }
puts arr.reject { |a| a < 3 }
puts arr.drop_while { |a| a < 4 }

puts arr.to_s

arr.delete_if { |a| a < 4 }
puts arr.to_s

arr = [1, 2, 3, 4, 5, 6]
puts arr.keep_if { |a| a < 4 }
