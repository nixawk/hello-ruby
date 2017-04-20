
## Blocks

# chunks of code that you can associate with method invocations, almost as if they were
# parameters. This is an incredibly powerful feature. You can use code blocks to implement
# callbacks (but they're simpler than Java's anonymous inner classes), to pass around chunks
# of code (but they're more flexible than C's function pointers), and to implement iterators.

# Code blocks are just chunks of code between braces or do...end.

1.times { puts "hello Ruby" }

1.times do
  puts "hello Ruby"
end

# Once you've created a block, you can associate it with a call to a method. That method can then
# invoke the block one or more times using the Ruby [yield] statement. The following example
# shows this in action. We define a method that calls yield twice. We then call it, putting a
# block on the same line, after the call (and after any arguments to the method).


def print_name
  yield
  yield
end

def print_name2
  2.times { yield }
end

print_name { puts "My name is Ruby" }
print_name2 { puts "My name is Ruby" }

# Within the block, you list the names of the arguments to receive these parameters between vertical bars ('|')

2.times { |n|
  puts "num : #{n}"
}

# Similarly, many looping constructs that are built into languages such as C and Java are simply method calls in Ruby,
# with the methods invoking the associated block zero or more times.

# 5.times { codeblock }
# 3.upto(6) { codeblock }
# ('a'..'e').each { codeblock }