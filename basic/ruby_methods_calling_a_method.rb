
## Calling a Method

# connection.downloadMP3("jitterbug") { |p| .... }

# the object connection is the receiver,
# downloadMP3 is the name of the method,
# "jitterbug" is the parameter,
# and the stuff between the braces is the associated block.

# If you omit the receiver, it defaults to self, the current object.

class ClassOne
  def initialize(name)
  	@name = name
  	self.hello
  end

  def hello
  	puts "hello, #{@name}"
  end
end

classone = ClassOne.new('Ruby')

# The optional parameters follow the method name. If there is no ambiguity you
# can omit the parameterses around the argument list when calling a method.
# [Other Ruby documentation sometimes calls these method calls without parentheses
# "commands."] However, except in the simplest cases we don't recommend this---there
# are some subtle problems that can trip you up. [In particular, you must use parentheses
# on a method call that is itself a parameter to another method call (unless it is the last
# parameter).]

strone = String.new    # same as
strtwo = String.new()  # this

puts 1, 2, 3, 4   # same as
puts(1, 2, 3, 4)  # this
