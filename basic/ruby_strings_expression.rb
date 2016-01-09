
# Ruby does with double-quoted strings is expression imterpolation. Within the
# string, the sequence #{expression} is replaced by the value of expression.
# We could use this to rewrite our previous method.

os = "Linux"

puts "It runs on #{os}"
