#!/usr/bin/ruby

# A local variable has a name starting with a lower case letter or an
# underscore character (_). Local variables do not, like globals and instance
# variables, have the value nil before initialization.

# defined? is an operator which checks whether an identifier is defined. It
# returns a description of the identifier if it is defined, or nil otherwise.
#
def foo
  local_variables = 10
  puts "local variables: #{local_variables}"
  puts defined?(local_variables)
end

foo
puts defined?(foo)
