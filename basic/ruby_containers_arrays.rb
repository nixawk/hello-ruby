
# The class Array holds a collection of object references. 
# Each object reference occupies a position in the array, identified by a non-negative integer index.

arrayone = [ 1, 2, 3, 4, 5 ]
puts arrayone.class
puts arrayone.length

# Arrays are indexed using the [] operator. As with most Ruby operators, this is
# actually a method (in class Array) and hence can be overriden in subclasses.

puts arrayone[0]
# Array indices start at zero
# Index an array with a single integer, and it returns the object at that opsition
# or returns [nil] if nothing's there.

puts arrayone[-1]
# Index an array with a negative integer, and it counts from the end.

# The [] operator has a corresponding []= operator, which lets you set elements in
# the array. If used with a single integer index, the element at that position is
# replaced by whatever is on the right-hand side of the assignment.

# If the index to []= is two numbers (a start and a length) or a range, then those
# elements in the original array are replaced by whatever is on the right-hand side
# of the assignment.

arrayone[1, 3] = 'cat'
puts arrayone.to_s