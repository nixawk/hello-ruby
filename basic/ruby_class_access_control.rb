

## Access Control

#  - [Public methods]: can be called by anyone -- there is no access control.
#    Methods are public by default (except for initialize, which is always
#    private).
#
#  - [Protected methods]: can be invoked only by objects of the defining class
#    and its subclasses. Access is kept within the family.
#
#  - [Private  methods]: cannot be called with an explicit receiver. Because you
#    cannot specify an object when using them, private methods can be called
#    only in defining class and by direct descendents within that same object.

# The difference between "protected" and "private" is fairly subtle, and is different
# in Ruby than in most common OO languages.
# If a method is protected, it may be called by any instance of the defining class or its subclasses.

# If a method is private, it may be called only within the context of the calling object--it is nevner
# possible to access another object's private methods directory, even if the object is of the same
# class as the caller.


# You specify access levels to methods within class or module definitions using one
# or more of the three functions public, protected, and private.

class ClassOne
  def default_method   # default os 'public'
    puts 'ClassOne - default_method'
  end

  protected
  def protected_method   # will be 'protected', only called in subclass
    puts 'ClassOne - protected_method'
  end

  private
  def private_method   # will be 'private', only called in parent class
    puts 'ClassOne - private_method'
  end

  public
  def public_method   # will be 'public'
    puts 'ClassOne - public_method'
  end

  def call_private_method
    private_method
  end
end


class SubClassOne < ClassOne
  def call_protected_method
    protected_method
  end
end


class ClassTwo
  def default_method
    puts 'ClassTwo - default_method'
  end

  def protected_method
    puts 'ClassTwo - protected_method'
  end

  def private_method
    puts 'ClassTwo - private_method'
  end

  def public_method
    puts 'ClassTwo - public_method'
  end

  public    :default_method, :public_method
  protected :protected_method
  private   :private_method
end

class SubTwo < ClassTwo
end


classone = ClassOne.new
classone.default_method
classone.public_method

# ruby_class_access_control.rb:77:in `<main>': private method `private_method' called for #<ClassOne:0x007fa28385f160> (NoMethodError)
# classone.private_method

classone.call_private_method