
class ClassOne
  def initialize(name, age)
    @name = name
    @age = age
  end

  def set_name(name)
    @name = name
  end

  def set_age(age)
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

# Sometimes you need to be able to set an attribute from outside the object.
# In Ruby, the attributes of an object can be accessed as if they were any other variable.
# Ruby provides a shortcut for creating these simple atribute setting.

class ClassTwo
  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_reader :name, :age
  attr_writer :name, :age
end


classone = ClassOne.new('ClassOne', 25)
puts classone.age
classone.set_age("13")
puts classone.age

classtwo = ClassTwo.new('ClassTwo', 25)
puts classtwo.age
classtwo.age = 13
puts classtwo.age