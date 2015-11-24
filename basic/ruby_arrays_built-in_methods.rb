#!/usr/bin/ruby

ary1 = Array(0..5)
ary2 = Array(4..8)

puts "ary1: #{ary1}"
puts "ary2: #{ary2}"

puts "ary1 & ary2: #{ary1 & ary2}"
puts "ary1 + ary2: #{ary1 + ary2}"
puts "ary1 - ary2: #{ary1 - ary2}"
puts "ary1 | ary2: #{ary1 | ary2}"

# array[index]
# array[start, length]
# array[range]

puts "ary1[2, 2]: #{ary1[2, 2]}"
puts "ary1[2..3]: #{ary1[2..3]}"

# array.at(index)
# Returns the element at index. Returns nil if the index is out of range.

# array.clear
# Removes all elements from array

# array.collect { |item| block }
# array.collect! { |item| block }
# array.map { |item| block }
# array.map! { |item| block }
# Invoke block once for each element of self, replacing the element with the
# value returned by block.

ary3 = ary1.map { |i| i += 1 }
ary4 = ary1.collect { |i| i += 1 }

puts "ary3: #{ary3}"
puts "ary4: #{ary4}"

# array.compact
# array.compact!
# Returns nil elements from array.

# array.concat(other_array)
puts "ary1.concat(ary2): #{ary1.concat(ary2)}"

# array.delete(obj)
# array.delete(obj) { block }
# array.delete_at(index)
# array.delete_if { |item| block }
# array.each { |item| block }
ary1.each { |e| puts "element: #{e}" }

# array.each_index { |index| block }
# pass the index of the element instead of the element itself
ary1.each_index { |index| puts "index: #{index}"}

# array.empty?
# Return true if the self array contains no elements

# array.shift
# Return the first element of self and removes it (shifting all other
# elememnts down by one). Returns nil if the array is empty

# array.pop
# Returns the last element from array and returns it, or nil if array is
# empty.

# array.push(obj, ...)
# Pushes (appends) the given obj onto the end of this array. This expression
# returns the array itself, so several may be chained together.

# array.length
# array.size
# Returns the length of array (number of elements). Alias for length


# array.to_ary
# Returns self

# array.to_s
# Returns self.join
puts "ary1.to_s: #{ary1.to_s}"
puts "ary1.join(','): #{ary1.join(',')}"

# array.uniq
# array.uniq!
# Returns a array by removing duplicate values in array.

# array.zip(arg)
# COnverts any arguments to arrays, then merges elements of array with
# corresponding elements from each argument.

puts "ary1.zip(ary1): #{ary1.zip(ary1)}"
