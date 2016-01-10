
# Class methods are distinguished from instance methods by their definition.
# Class methods are defined by placing the class name and a period in front of
# the method name.

class Example
  def instanceMethod
    puts "This is an instance method"
  end

  def Example.classMethod
    puts "This is a class method"
  end
end

ex = Example.new
ex.instanceMethod
Example.classMethod
