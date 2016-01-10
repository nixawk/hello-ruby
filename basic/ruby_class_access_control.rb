

# When designing a class interface, it's important to consider just how much
# access to your class you'll be exposing to the outside world. Allow too much
# access into your class, and you risk increasing the coupling in your
# application users of your classs will be tempted to rely on details of your
# class's implementation, rather than on its logical interface. The good news
# is that the only way to change an object's state in Ruby is by calling one
# of its methods. A good rule of thumb is never to expose methods that could
# leave an object in an invalid state. Ruby gives us three levels of
# protection.
#
#  - Public methods: can be called by anyone -- there is no access control.
#    Methods are public by default (except for initialize, which is always
#    private).
#
#  - Protected methods: can be invoked only by objects of the defining class
#    and its subclasses. Access is kept within the family.
#
#  - Private  methods: cannot be called with an explicit receiver. Because you
#    cannot specify an object when using them, private methods can be called
#    only in defining class and by direct descendents within that same object.


class ClsOne
  def method1   # default os 'public'
    puts 'ClsOne - method1'
  end

  protected

  def method2   # will be 'protected'
    puts 'ClsOne - protected method2'
  end

  private
  def method3   # will be 'private'
    puts 'ClsOne - ptivate method3'
  end

  public
  def method4   # will be 'public'
    puts 'ClsOne - public method4'
  end
end


class ClsTwo
  def method1
    puts 'ClsTwo - method1'
  end

  def method2
    puts 'ClsTwo - protected method2'
  end

  def method3
    puts 'ClsTwo - ptivate method3'
  end

  def method4
    puts 'ClsTwo - public method4'
  end

  public    :method1, :method4
  protected :method2
  private   :method3
end

class SubTwo < ClsTwo
end

clsOne = ClsOne.new
clsOne.method1
# clsOne.method2  # in `<main>': protected method `method2' called for
                  #<ClsOne:0x007faa5d084030> (NoMethodError)
# clsOne.method3  # private method `method3' called for
                  #<ClsOne:0x007fbd08984078> (NoMethodError)
clsOne.method4

# ClsTwo.method1  # in `<main>': undefined method `method1' for ClsTwo:Class (NoMethodError)
# ClsTwo.method2  # in `<main>': undefined method `method2' for ClsTwo:Class (NoMethodError)
# ClsTwo.method3  # in `<main>': undefined method `method3' for ClsTwo:Class (NoMethodError)
# ClsTwo.method4  # in `<main>': undefined method `method4' for ClsTwo:Class (NoMethodError)

# SubTwo.method1  # in `<main>': undefined method `method1' for SubTwo:Class (NoMethodError)
# SubTwo.method2  # in `<main>': undefined method `method2' for SubTwo:Class (NoMethodError)
# SubTwo.method3  # in `<main>': undefined method `method3' for SubTwo:Class (NoMethodError)
# SubTwo.method4  # in `<main>': undefined method `method4' for SubTwo:Class (NoMethodError)

subTwo = SubTwo.new
subTwo.method1
# subTwo.method2  # protected method `method2' called for #<SubTwo:0x007f826a097f60> (NoMethodError)
# subTwo.method3  # in `<main>': private method `method3' called for #<SubTwo:0x007faafc177f60> (NoMethodError)
subTwo.method4
