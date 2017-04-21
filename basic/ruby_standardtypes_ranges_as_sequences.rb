
# Ranges as Sequences

# The first and perhaps most natural use of ranges is to express a sequence.
# Sequences have a start point, an end point, and a way to produce successive
# vallues in the sequence.

# In Ruby, these sequences are created using the ".." and "..." range operators.
# The two-dot form creates an inclusive range, while the three-dot form creates
# a range that excludes the specified high value.

(1..2).each { |i| puts i }   # output: 1, 2
(1...2).each { |i| puts i }  # output: 1

# In Ruby, unlike in some earlier versions of Perl, ranges are not represented
# internally as lists: the sequence 1..100000 is held as a Range object
# containing references to two Fixnum objects. If you need to, you can convert
# to a range to a list using the to_a method.

# var = (1..2).to_a

digits = 0..9
puts digits.include?(5)
puts digits.min
puts digits.max
digits.reject {|i| i < 5}  # [5, 6, 7, 8, 9]
digits.each {|i| puts i}
