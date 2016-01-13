
# Ruby provides what at first sight looks like two separate sets of I/O
# routines. The first is the simple interface -- we've been using it pretty
# much exlusively so far.

print "Enter your name: "
name = gets

# There are a whole set of I/O-related methods implemented in the Kernel
# module,
#
# gets
# open
# print
# printf
# putc
# puts
# readline
# readlines
# test
#
# that make it simple and convenient to write straightforward Ruby programs.
# These methods typically do I/O to standard input and standard output, which
# makes them useful for writing filters.

# The second way, which gives you a lot more IO objects.


# # What Is an IO Object?
#
# Ruby defines a single base class, IO, to handle input and output. This base
# class is subclassed by classes (File) and (BasicSocket) to provide more
# specialized behavior, but the principles are the same throughout. An IO
# object is a bidirectional channel between a Ruby program and some external
# resource.
