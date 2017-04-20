
## double quoted

# First, it looks for substitutions---sequences that start with a backslash
# character---and replaces them with some binary value. The most common of
# these is "\n", which is replaced with a newline character. 
# When a string containing a newline is output, the "\n" forces a line break.

# Second, Ruby does with double-quoted strings is expressions interpolation.
# Within the string, the sequence #{expression} is replaced by the value of expression.
# We could use this to rewrite our previous method.

# When Ruby constructs this string object,  Arbitrarily complex expressions are allowed
# in the #{...} construct.


def print_name(name)
  puts "My name is #{name}"
end


print_name("Ruby")