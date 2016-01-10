
# Ruby comes with a comprehensive I/O library. However, in most of the
# examples in this book we'll stick to a few simple methods. We've already
# come across two methods that do output. puts writes each of its arguments,
# adding a newline after each. print also writes its arguments, but with no
# newline. Both can be used to write to any I/O object, but by default they
# write to the console.
#
# Another output method we use a lot is printf, which prints its arguments
# under the control of a format string (just like printf in C or Perl)
#
printf "Number: %5.2f, String: %s", 1.23, "Hello"

# There are many ways to read input into your program. Probably the most
# traditional is to use the routine gets, which returns the next line from
# yourprogram's standard input stream.

line = gets
print line

# The gets routine has a side effect: as well as returning the line just read,
# it also stores it into the global variable $_. This variable is special, in
# that it is used as the default argument in many circumstances.
# If you call print with no argument, it prints the content of $_. If you
# write an if or while statement with just a regular expression as the
# condition, that expression is matched against $_.

while gets
  if /Ruby/i
    print
  end
end
