
# Code Blocks:
# chunks of code that you can associate with method invocations, almost as if
# they were parameters. This is an incredibly powerful feature. You can use
# code blocks to implement callbacks (but they're simpler than Java's
# anonymous inner classes), to pass around chunks of code (but they're more
# flexible than C's function pointers), and to implement iterators.

# { puts "Hello" }   # this is a block

# do                 #
#   puts "Hello"     # and so is this
# end                #


# Once you've created a block, you can associate it with a call to a method.
# That method can then invoke one or more times using the Ruby (yield)
# statement. The following example shows this in action. We define a method
# that calls yield twice. We then call it, putting a block on the same line,
# after the call (and after any arguments to the method).

def callBlock
  yield
  yield
end


callBlock { puts "Hello World"}   # run the code twice

# You can also provide parameters to the call to yield: these will be passed
# to the block. Within the block, you list the names of the arguments to
# receive these parameters between vertical bars ('|')

a = %w( ant bee cat dog elk)      # create an array
a.each { |animal| puts animal }   # iterate over the contents

# Let's look at how we might implement the Array class's each iterator that we
# used in the previous example. The each iterator loops through every element
# in the array, calling yield for each one, In pseudo code, this might look
# like:

# def each
#   for each element
#     yield(element)
#   end
# end

5.times { print '*' }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }

