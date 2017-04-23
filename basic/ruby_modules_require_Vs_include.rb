
## Ruby require statement
# The require statement is similar to the include statement of C and C++ and the import
# statement of Java. If a third program wants to use any defined module, it can simply
# load the module files using the Ruby require statement:

## require filename
# Here, it is not required to give .rb extension along with a file name.


## $LOAD_PATH && require_relative
# Here, we are using $LOAD_PATH << '.' to make Ruby aware that included files
# must be searched in the current directory. If you do not want to use [$LOAD_PATH]
# then you can use require_relative to include files from a relative directory.

# Here, both the files contain same function name. So, this will result in code ambiguity
# while including in  calling program but modules avoid this code ambiguity and we are
# able to call appropriate function using module name.


## include
# To embed a module in a class, you use the include statement in the class:
# include modulename


module ModuleOne
  def ModuleOne.hello
  	puts "hello ModuleOne"
  end

  def hello_moduleone
  	puts "hello moduleone"
  end

  def hello
  	puts "ModuleOne says: hello Ruby"
  end
end

module ModuleTwo
  def ModuleTwo.hello
  	puts "hello ModuleTwo"
  end

  def hello_moduletwo
  	puts "hello moduletwo"
  end

   def hello
  	puts "ModuleTwo says: hello Ruby"
   end
end


class ClassOne
  include ModuleOne
  include ModuleTwo

  def says
    ModuleOne.hello
    ModuleTwo.hello
  end
end


classone = ClassOne.new
classone.says

# Mixins In Ruby
classone.hello_moduleone
classone.hello_moduletwo

# If double methods are the same, the last method will be used.
classone.hello