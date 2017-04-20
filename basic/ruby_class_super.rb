
## Inheritance and Mixins

# Some object-oridented languages (notably C++) support multiple inheritance,
# where a class can have more than one immediate parent, inheriting functionality
# inheritance hierarchy can become ambiguous.

# Other languages, such as Java, support single inheritance. Here, a class can have
# only one immediate parent. Although cleaner (and easier to implement), single inheritance
# also has drawbacks--in the real world things often inherit attributes from multiple
# sources.

# Ruby offers an interesting and powerful compromise, giving you the simplicity of
# single inheritance and the power of multiple inheritance. A Ruby class can have only
# one direct parent, and so Ruby is a single-inheritance. However, Ruby classes can include
# the functionality of any number of mixins (a mixin is like a partial class definition).

class ParentClass
  def initialize(name)
    @name = name
  end

  def print_name
    puts "ParentClass - My name is #{@name}"
  end
end

## super
# When you invoke [super] with no arguments, Ruby sends a message to the current object's parent,
# asking it to invoke a method of the same name as the current method, and passing it the parameters
# that were passed to the current method. Now we can implement our new and improved.

class SubClass < ParentClass
  def initialize(name, age)
    @name = name
    @age = age
  end

  def print_name
    super   # [ParentClass.print_name] is executed
    puts "SubClass - super finished"
  end

  def print_age
    puts "SubClass - My age is #{@age}"
  end
end



myclass = SubClass.new("Programmer", 25)
myclass.print_name
myclass.print_age