
class ClassOne
  def initialize(name)
  	@name = name
  end

  def name
  	@name
  end
end

# Ruby provides a convenient shortcut:  attr_reader creates these accessor methods for you.

class ClassTwo
	attr_reader :name
end

# This example has introduce something new. THe construct [:name] is an expression that returns
# a Symbol object corresponding to name. You can think of :name as meaning the name of the variable name,
# while plain name is the value of the variable. In this example, we named the accessor methods name.
# The corresponding instance variable, @name will be created automatically. These accessor methods are
# identical to the ones we wrote by hand eariler.

classone = ClassOne.new('RubyOne')
puts classone.name

classtwo = ClassOne.new('RubyTwo')
puts classtwo.name