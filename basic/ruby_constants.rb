#!/usr/bin/ruby

# A constants has a name starting with an uppercase character.
# It should be assigned a value at most once.

Const_var = 32
puts "CONSTANTS VARIABLES: #{Const_var}"

Const_var = 33
puts "CONSTANTS VARIABLES: #{Const_var}"

# Constants defined within a class or module
# can be accessed from within that class or module,
# and those defined outside a class or module can be
# accessed globally.

class Foo
  CONSTANTS_VAR = 100

  def foo
    puts "CONSTANTS VARIABLES: #{CONSTANTS_VAR}"
  end
end

# Create Objects
object = Foo.new
object.foo
