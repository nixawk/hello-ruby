
# class names start with an uppercase leter, while method names start with a
# lowercase letter. which contains just a single method, initialize.

# initialize is a special method in Ruby programs. When you call [YourClass.new] to
# create a new Class object,  Ruby creates an uninitialized object and then calls that
# object's initialize method, passing in any parameters that were passed to new.
# This gives you a chance to write code that sets up your object's state.

class YourClass
  def initialize(name)
    puts "Your name is #{name}"
  end
end


yclass = YourClass.new('Ruby')

# By default, the inspect message, which can be sent to any object, dumps out the object's
# and instance variables. It looks as though we have them set up correctly.

puts yclass.inspect

# Ruby has a standard message, to_s, which it sends to any object it wants to render as a
# string. You can also override to_s in our clas.

# In Ruby, classes are never closed: you can always add methods to an existing class. we'll
# show just the class definitions fot the new methods; the old ones will stil be there. It
# saves us having to repeat redundant stuff in each example.
puts yclass.to_s