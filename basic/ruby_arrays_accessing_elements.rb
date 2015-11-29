#!/usr/bin/ruby

# Elements in an array can be retrieved using the #[] method. It can take a
# single integer argument (a numeric index), a pair of arguments (start and
# length) or a range. Negative indices start counting from the end, with -1
# being the last element.

arr = [1, 2, 3, 4, 5, 6]
puts arr[2]     # 3
puts arr[100]   # nil
puts arr[-3]    # 4
puts arr[2, 3]  # => [3, 4, 5]
puts arr[1..4]  # => [2, 3, 4, 5]
puts arr[1..-3] # => [2, 3, 4]

# Another way to access a particular array element is by using the at method.

puts arr.at(0)

# The slice method works in an identical manner to #[]
# To raise an error for indices outside of the array bounds or else to provide
# a default value when that happens, you can use fetch.

arr = ['a', 'b', 'c', 'd', 'e', 'f']
puts arr.fetch(100)  # => IndexError: index 100 outside of array bounds
puts arr.fetch(100, "oops")

# The special methods first and last will return the first and last elements
# of an array, respectively.

puts arr.first
puts arr.last

# To return the first n elements of an array, use take
puts arr.take(3)

# drop does the opposite of take, by returning the elements after n elements
# have been dropped:
puts arr.drop(3)
