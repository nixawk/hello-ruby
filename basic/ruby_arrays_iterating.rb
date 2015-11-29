#!/usr/bin/ruby

# Like all classes that include the Enumerable module, Array has an each
# method, which defines what elements should be iterated over and how. In case
# of Array's each, all elements in the Array instance are yielded to the
# supplied block in sequence.

arr = [1, 2, 3, 4, 5]
puts arr.each { |a| print a -= 10, " " }

# Another sometimes useful iterator is reverse_each which will iterate over
# the elements in the array in reverse order.

words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} "}
puts str

# The map method can be used to create a new array based on the original
# array, but with the values modified by the supplied block:

puts arr.map { |a| 2*a }
