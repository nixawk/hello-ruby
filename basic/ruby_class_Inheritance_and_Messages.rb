
# Inheritance allows you to create a class that is refinement or
# specialization of another class.

class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end


# '< Song' on the class definition line tells Ruby that a KaraokeSong is a
# subclass of Song. (Not surprisingly, this means that Song is a superclass of
# KaraokeSong. People also talk about parent-child relationships, so
# KaraokeSong'S parent would be Song.) For now, don't worry too much about the
# initialize method; we'll talk about (super) call later.

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + " [#{@lyrics}]"
  end
end

# We're correctly displaying the value of the @lyrics instance variable. To do
# this, the subclass directly accesses the instance variables of its
# ancestors. So why is this a bad way to implement to_s ?

# Ruby sends a message to the current object's parent, asking it to invoke a
# method of the same name as the the current method, and passing it the
# parameters that were passed to the current method. Now we can implement our
# new and improved to_s.

aSong = KaraokeSong.new('My Way', 'Sinatra', 225, 'And now, the...')
puts aSong.to_s


# We explicitly told Ruby that KaraokeSong was as a subclass of Song, but we
# didn't specify a parent class for (Song) itself. If you don't specify a parent
# when defining a class, Ruby supplies class (object) as a default.
# This means that all objects have Object as an ancestor, and that object's
# instance methods are available to every object in Ruby.
