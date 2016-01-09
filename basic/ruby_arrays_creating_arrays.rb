#!/usr/bin/ruby

# There are many ways to create or initialize an array.
# One way is with the new class method

# A new array can be created by using the literal constructor [].
# Arrays can contain different types of objects. For Example,
# the array below contains an Integer, a String and a Float:

ary = [1, 'two', 3.0]
puts ary

# An array can also be created by explicitly calling ::new with zero,
# one (the initial size of the Array) or two arguments
# (the initial size and a default object)

ary = Array.new
puts ary

ary = Array.new(4)
puts ary

ary = Array.new(4, true)
puts ary

# Note that the second argument populates the array with references
# to the same object. Therefore, it is only recommended in cases when
# you need to instantiate arrays with natively immutable objects such as
# Symbols, numbers, true of false.

ary = Array.new(4) { Hash.new }
puts ary

# An array can also be created by using the Array() method, provided by
# Kernel, which tries to call to_ary, then to_a its argument.

ary = Array({:a => "a", :b => "b"})
puts ary

ary = Array((1..5))
puts ary

# Sometimes creating arrays of words can be a pain, what with all the quotes
# and commas. Fortunately, there's a shortcut: %w does just what we want.

a = %w{ ant bee cat dog elk }
puts a
