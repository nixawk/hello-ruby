
# Virtual Attributes

# These attribute accessing methods do not have to be just simple wrappers around an object's
# instance variable.

class ClassOne
  def hello
    puts "hello Ruby"
  end

  def hello=(value)
  	puts "hello #{value}"
  end
end


classone = ClassOne.new
classone.hello
classone.hello="Ruby2"

# To the outside world, hello seems to be an attribute like any other.
# Internally, though, there is no corresponding instance variable.