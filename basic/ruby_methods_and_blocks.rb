
## Methods and Blocks

# As we discussed in the section on blocks and iterators,
# when a method is called, it may be associated with a block.
# Normally, you simply call the block from with the method using
# [yield]

def double_repeat
  2.times { yield }
end

double_repeat { puts "hello Ruby" }

# However, if the last parameter in a method definition is prefixed
# with an ampersand, any associated block is converted to a [Proc]
# object, and that object is assigned to the parameter.

class ClassCode
  def initialize(name, &codeblock)
    @name, @codeblock = name, codeblock
  end

  def says(firstname, secondname)
  	puts "#{@name} says: hello #{@codeblock.call(firstname, secondname)}"
  end
end

classcode = ClassCode.new("Ruby") {|firstname, secondname| "#{secondname}, #{firstname}"}
classcode.says('Green', 'Jim')