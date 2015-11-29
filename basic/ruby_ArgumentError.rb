#!/usr/bin/ruby

# Raised when the arguments are wrong and there isn't a more specific
# Exception class.

[1,2,3].first(5)

# Ex: passing the wrong number of arguments.
[1,2,3].first(4,5)

# Ex: passing an argument that is not acceptable.
[1,2,3].first(-4)
