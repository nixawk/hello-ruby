
# Ruby's array and hashes are indexed collections. Both store collections of
# objects, accessible using a key. With arrays, the key is an integer, whereas
# hashes support any object as a key. Both arrays and hashes groe as needed to
# provide more flexibility. It's more efficient to access array elements, but
# hashes provide more flexibility. Any particular array or hash can
# hold objects of differing types; you can have an array containing an
# integer, a string, and a floating point number, as we'll see in a minute.

# You can craete and initialize a new array using an array literal--a set of elements
# between square brackets. Give an array object, you can access indicidual elements
# by supplying an index between square brackets,

## Array

ary = [1, 'cat', 2, 'dog']

puts ary[0]
puts ary[1]

ary.each do |item|
  puts item
end

# You can create empty arrays either by using an array literal with no elements or by
# using the array object's constructor, Array.new.

empty_array1 = []
empty_array2 = Array.new

# Sometimes creating arrays of words can be a pain, what will all the quotes and commas.
# Fortunately, there's shortcut: %w does just what we want.

ary = %w{ ant bee cat dog elk }
puts ary[0]
puts ary[1]


## Hash

# Ruby hashes are similar to arrays. A hash literal uses braces rather than square brackets.
# The literal must supply two objects for every entry: one for the key, the other for the value.

animals = {
  '1' => 'ant',
  '2' => 'bee',
  '3' => 'cat',
  '4' => 'dog',
  '5' => 'elk'
}

puts animals[0]
puts animals[1]

animals.each do |k, v|
  puts "#{k} - #{v}"
end

# As the last example shows, a hash by default returns nil when indexed by a key it doesn't contain.
# Normally this is convenient, as nil means false when used in conditional expressions. Sometimes
# you'll want to change this default. For example, if you're using a hash to count the number of times
# each key occurs, it's convienient to have the default value be zero.

histogram = Hash.new(0)
puts histogram['count']
histogram['count'] += 1
puts histogram['count']