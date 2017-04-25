
## str % arg

# Format - Uses str as a format specification, and returns the result of applying it to arg.
# If the format specification contains more than one substitution, then arg must be an Array
# or Hash containing the values to be substituted. See Kernel::sprintf for details of the
# format string.

# format a string or integer
puts "%04x" % 123

# format a array
arrayobj = [1, 2]
puts "%04x %04x" % arrayobj

# foramt a hash
puts "name = %{name}" % {:name => "Ruby"}