
## Operator Expressions

# Ruby has the basic set of operators (+, -, *, -, and so on) as well as a few
# surprises. A complete list of the operatots, and their precedences.

# In Ruby, many operators are actually method calls. When you write
# a*b+c
# you're actually asking the object referenced by [a] to execute the method "*",
# passing in the parameter b. You then ask the object that results from that
# calculation to execute "+", passing [c] as a parameter. This is exactly
# equivalent to writing
# (a.*(b)).+(c)

def hello(name)
  puts "hello #{name}"
end

alias say hello  # method alias
say('jacke')