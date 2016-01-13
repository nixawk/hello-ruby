
# Opening and Clsoing Files
#
aFile = File.new('testfile', 'r')
aFile.close

# You can create a File object that is open for reading, writing, or both
# according to the mode string (here we opened ``testfile'' for reading with
# an ``r''). After opening the file, we can work with it, writing and/or
# reading data as needed. Finally, as responsible software citizens, we close
# the file, ensuring that all buffered data is written and that all related
# resources are freed.

# File.open
# File.new
#
# File.open('testfile', 'r') do |aFile|
# end


# Reading and Writing Files
#
# The same methods that we've been using for ``simple'' I/O are available for
# all file objects. So, gets reads a line from standard input, and aFile.gets
# reads a line from the file object aFile.

## Iterators for Reading
#
# As well as using the usual loops to read data from an IO stream, you can
# also use various Ruby iterators. IO#each_byte invokes a block with the next
# 8-bit byte from the IO object.

# each_byte
# each_line
# foreach

# aFile = File.new('testfile')
# aFile.each_byte { |ch| putc ch; putc ?. }

# aFile.each_line { |line| puts "Go #{line.dump}" }

# IO.foreach('testfile') { |line| puts line }


# Writing to Files
#
# Every object you pass to puts and print is converted to a string by calling
# that object;s to_s method. If for some reason the to_s method doesn't return
# a valid string, a string is created containing the objects's class name and
# id.

# The exceptions are simple too. The nil object will print as the string ``nil'',
# and an array passed to puts will be written as if each of its elements in
# turn were passed separately to puts.

# What if you want to write binary data and don't want Ruby messing with it ?
# Well, normally you can simple use (IO#print) and pass in a string containing
# the bytes to be written. However, you can get at the low-level input and
# output routines if you really want -- have a look at the documentation for
# IO#sysread and IO#syswrite.

# And how do you get the binary data into a string in the first place? The two
# common ways are to poke it in byte by byte or to use Array#pack.


