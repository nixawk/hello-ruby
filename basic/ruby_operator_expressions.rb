
## Operator Expressions
#
# Ruby has the basic set of operators (+, -, *, /, and so on) as well as a few
# surprises. A complete list of the operators, and their precedences,

a = 1 + 2
b = 1 - 2
c = 2 * 2
d = 4 / 2

## Miscekkaneous Expressions
#
# 1. Command Expansion
# If you enclose a string in backquptes, or use the delimited form prefixed by
# %x, it will (by default) be executed as a command by your underlying
# operating system. The value of the expression is the standard output of that
# command. Newlines will not be stripped, so it is likely that the value you
# get back will have a trailling return or linefeed character.

puts `date`
puts `ls`
puts %x{echo "Hello World"}

# 2. Backquotes Are Soft
# In the description of the command output expression, we said that the string
# in backquotes would ``by default'' be executed as a command. In fact, the
# string is passed to the method called Kernel::`(a single backquote). If you
# want, you can override this.

alias oldBackquote `

def `(cmd)
  result = oldBackquote(cmd)
  if $? != 0
    raise "Command #{cmd} failed"
  end
end

puts `date`
# puts `data`

# 3. Defined?, And, Or, and Not
# Ruby supports all the standard boolean operators and introduces the new
# opearator (defined?) - The defined? operatotr returns nil if its argument
# (which can be an arbitrary expression) is not defined, otherwise it returns
# a description of that argument.
# and - &&
# or  - ||
# not - !

puts defined? 1
puts defined? dummy
puts defined? printf
puts defined? String
puts defined? $&
puts defined? $_
puts defined? Math::PI
puts defined? 42.abs

# In addition to the boolean operators, Ruby objects support comparison using
# the methods ==, ===, <=>, =~, eql?, and equal?. All but are defined in class
# Object but one often overridden by descendents to provide appropriate
# semantics.

# ==          -  Test for equal value.
# ===         -  Used to test equality within a when clause of a case statement.
# <=>         -  General comparison operator. Returns -1, 0, +1, depending on
               # whether its receiver is less than, equal to, or greater than its argument.
# <, <=, >=
# =~          -  Regular expression pattern match
# eql?
# equal?


# 4. If and Unless Expressions
a, b = 1, 2
if a == b
  puts 'Yes'
else
  puts 'No'
end

# 5. If and Unless Modifiers
puts 'Yes' ? a == b : 'No'
