
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


# initialize is a special method in Ruby programs. When you call Song.new to
# create a new Song object, Ruby creates an uninitialized object and then
# calls that objects's initialize method, passing in any parameters that were
# passed to new. This gives you a chance to write code that sets up your
# objects state.


# Ruby has a standard message, to_s, which it sends to any object it wants to
# render as a string. Let's try it on our song.

# In Ruby, classes are never closed: you can always add methods to an existing
# class. This applies to the classes you write as well as the standard,
# built-in classes. All you have to do is open up a class definition for an
# existing class, and the new contents you specify will be added to whatever's
# there.

aSong = Song.new('Bicylops', 'Fleck', 260)
puts aSong.to_s
