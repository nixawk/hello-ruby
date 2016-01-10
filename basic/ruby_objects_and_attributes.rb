
# Objects and Attributes

# The state is private to those objects--no other object can access an
# object's instance variable. In general, this is a Good Thing. It means that
# the object is solely responsible for maintaining its own consistency.

class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def duration
    @duration
  end
end

aSong = Song.new('Bicylops', 'Fleck', 260)
puts aSong.artist
puts aSong.name
puts aSong.duration

# Here we've defined three accessor methods to return the values of the
# three instance attributes. Because this is such a common idiom , Ruby provides
# a convenient shortcut: attr_reader creates these accessor methods for you.

class Song2
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  attr_reader :name, :artist, :duration
end

aSong = Song2.new('Bicylops', 'Fleck', 260)
puts aSong.artist
puts aSong.name
puts aSong.duration

# In Ruby, the attributes of an object can be accessed as if they were any other variable.
# We've seen this above with phrases such as aSong2.new.

class Song3
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  attr_reader :name, :artist, :duration
  attr_writer :duration
end

aSong = Song3.new('Bicylops', 'Fleck', 260)
puts aSong.duration
aSong.duration = 257
puts aSong.duration
