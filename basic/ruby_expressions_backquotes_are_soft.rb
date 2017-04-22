
# Backquotes Are Soft

# In the description of the command output expression, we said that the string
# in backquotes would "by default" be executed as a command. In fact, the string
# is passed to the method call [Kernel::`] (a single backquote). If you want, you
# can override this.


alias command_operator `

def `(command)
  result = command_operator(command)

  if $? != 0
    raise "Command #{command} not found"
  end
  result
end


print `date`
print `data`

# Fri Apr 21 23:37:41 CDT 2017
# ruby_expressions_backquotes_are_soft.rb:13:in ``': No such file or directory - data (Errno::ENOENT)
#     from ruby_expressions_backquotes_are_soft.rb:13:in ``'
#     from ruby_expressions_backquotes_are_soft.rb:23:in `<main>'