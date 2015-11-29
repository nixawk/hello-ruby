#!/usr/bin/ruby

# Items can be added to the end of an array by using either push or <<.

arr = [1,2,3,4]
arr.push(5)
arr << 6

puts arr

# unshift will add a new item to the beginning of an array.

arr.unshift(0) # => [0, 1, 2, 3, 4, 5, 6]
puts arr

# With insert you can add a new element to an array at any position.
# With insert method, you can also insert multiple values at once:

arr.insert(3, 'apple')
arr.insert(3, 'orange', 'pear', 'grapefruit')

puts arr
