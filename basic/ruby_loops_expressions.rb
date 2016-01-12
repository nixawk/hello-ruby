
# The while loop executes its body zero or more times as long as its condition
# is true. For example, this common idiom reads util the input is exhausted.

n = 10

while n > 0
  puts "Number is #{n}"
  n -= 1
end

until n > 10
  puts "Number is #{n}"
  n += 1
end

# As with if and unless, both of the loops can also be used as statement
# modifiers.

puts n -= 1 while n > 0
puts n += 1 until n >= 10
