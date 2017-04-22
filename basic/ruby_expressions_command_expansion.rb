
## Miscellaneous Expressions

# Command Expansion

# If you enclose a string in backquotes, or use the delimited from prefixed by %x,
# it will (by default) be executed as a command by your underlying operator system.

# The value of the expression is the standard output of that command. Newlines
# will not be stripped, so it is likely that the value you get back will have
# a trailing return or linefeed character.

puts `date`
puts %x{ echo "hello world" }