
# Modules are a way of grouping together methods, classes, and constants.
# Modules give you two major benefits:
#  1. Modules provide a namespace and name clashes.
#  2. Modules implement the mixin facility.

# Namespaces
#
# As you start to write bigger and bigger Ruby programs, you'll maturally find
# yourself producing chunks of reusable code -- libraries of related routines
# that are generally applicable. You'll want to break this code out into
# separate files so the contents can be shared among different Ruby programs.

module Trig
  PI = 3141592654
  def Trig.sin(x)
    puts "sin(#{x})"
  end

  def Trig.cos(x)
    puts "cos(#{x})"
  end
end


module Action
  VERY_BAD = 0
  BAD      = 1

  def Action.sin(badness)
  end
end

# Module constants are named just like class constants, with an initial
# uppercase letter. The method definitions look similar, too: these module
# methods are defined just like class methods.

# If a third program wants to use these modules, it can simply load up the two
# files (using the Ruby require statement)
#
# require 'trig'
# require 'action'


# Mixins
#
# Modules have another, wonderful use. At a stroke, the pretty much eliminate
# the need for multiple inheritance, providing a facility called a mixin.
#
# In the previous sectioin's examples, we defined module methods, methods
# whose names were prefixed by the module name. If this module you think of
# class methods, your next thought might well be ``What happens if I define
# instance methods within a module?'' Good question. A module can't have
# instances, because a module isn't a class. However, you can include a module
# within a class definition. When this happens, all the module's instance
# methods are suddenly available as methods in the class as well. They get
# mixed in. In fact, mixed-in modules effectively behave as superclass.


# A couple of points about the include statement before we go on.
#
# First, it has nothing to do with files. C programmers use a preprocessor
# directive called (#include) to insert the contents of one file into another
# during compilation. The Ruby (include) statement simply makes a reference to a
# named module. If that module is in a separate file, you must use require to
# drag that file in before using include.
#
# Second, a Ruby include does not simply copy the module's instance methods
# into the class. Instead, it makes a references from the class to the inclued
# module. If multiple classes include that module, they'll all point to the
# same thing. If you change the definition of a method within a module, even
# while your program is running, all classes that include that module will
# exhibit the new behavior.

# ###############
#
# module A
#   def a1
#   end
#
#   def a2
#   end
# end
#
# module B
#   def b1
#   end
#
#   def b2
#   end
# end
#
#
# class Sample
#   include A
#   include B
#
#   def s1
#   end
# end
#
# samp = Sample.new
# samp.a1
# samp.a2
# samp.a1
# samp.b1
# samp.b2
# samp.s1
