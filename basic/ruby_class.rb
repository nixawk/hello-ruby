
# Within each class, you can define instance methods. Each method is chunk of
# functionality which may be called from within the class and (depending on
# accessibility constraints) from outside. These instance methods in turn have
# access to the object's instance variables, and hence to the object's state.

# Methods are invoked by sending a message to an object. The message contains
# the method's name, along with any parameters the method may need.
# When an object receives a message, it looks into its own class for a
# corresponding method. If found, that method is executed. If the method isn't
# found, ... well, we'll go to that later.


class MyClass

  def initialize(name)
  	@name = name
  end

  def print_name
  	puts @name
  end
end


myclass = MyClass.new('ruby class')
myclass.print_name