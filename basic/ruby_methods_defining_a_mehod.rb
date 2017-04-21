
## Defining a Method

# A method is defined using the keyword [def].
# Method names should begin with a lowercase letter. [You won't get an
# immediate error if you use an uppercase letter, but when Ruby sees
# you calling the method, it will first guess that it is a constant,
# not a method invocation, and as a result it may parse the call incorrectly.]

# method?
# method!

# "?" and "!" are the only weird characters allowed as method name suffixes.

# Ruby lets you specify default values for a method's arguments -- values that
# will be used if the caller doesn't pass them explicitly.

def hello(name="Ruby")
  puts "hello #{name}"
end

# The return value of a method is the value of the last expression executed,
# or the result of an explicit return expression.

def get(name)
  puts "hello #{name}"
  name   # return value
end