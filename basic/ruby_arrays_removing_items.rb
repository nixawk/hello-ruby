#!/usr/bin/ruby

# The method pop removes the last element in anarray and returns it

arr = [1, 2, 3, 4, 5, 6]
arr.pop
puts arr

# To retrieve and at the same time remove the first item, use shift:
arr.shift
puts arr

# To delete an element at a particular index:
arr.delete_at(2)
puts arr

# To delete a particular element anywhere in an array, use delete:
arr = [1, 2, 2, 3]
arr.delete(2)
puts arr

# A useful method if you need to remove nil values from an array is compact.
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact!
puts arr

# Another common need is to remove duplicate elements from an array.
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr.uniq
