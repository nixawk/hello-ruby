
## Variable-Length Argument Lists

# But what if you want to pass in a variable number of arguments,
# or want to capture multiple arguments into a single parameter?
# Placing an asterisk before the name of the parameter after the
# "normal" parameters does just that.

def hello(name1, *name2)
  puts "name1: #{name1}"
  puts "name2: #{name2.to_a}"
end

hello(1, 2, 3, 4, 5)

# In this example, the first argument is assigned to the first method
# parameter as usual. However, the next parameter is prefixed with an
# asterisk, so all the remaining arguments are bundled into a new Array,
# which is then assigned to that parameter.