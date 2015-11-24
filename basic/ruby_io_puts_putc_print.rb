#!/usr/bin/ruby

val1 = "This is variable one"
val2 = "This is variable two"

puts val1
puts val2

putc val1
putc val2

print val1
print val2

# Unlike the puts statement, which outputs the entire string onto the screen,
# the putc statement can be used to output one character at a time.

# The print statement is similar to the puts statement. The only different is
# that the puts statement goes to the next line after printing the contents,
# whereas with the print statement the cursor is positioned on the same line.

puts "Enter a value: "
val3 = gets
puts val3

