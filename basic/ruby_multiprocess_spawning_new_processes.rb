
## Running Multipe Provesses

# Spawning New Processes

# There are several ways to spawn a separate process; the easiest is to run some
# command and wait for it to complete. You might find yourself doing this to run
# some separate command or retrieve data from the host system. Ruby does this for
# you with the [system] and backquote methods.

# The method Kernel::system executes the given command in a subprocess; it returns
# true if the command was found and executed properly, false otherwise. In case of
# failure, you'll find the subprocess's exit code in the gloobal variable [$?].

# One problem with [system] is that the command's output will simply go to the same
# destination as your program's output, which may not be what you want. To capture
# the standard output of a subprocess, you can use the backquotes, as with `date`
# in the previous example. Remember that you may need to use [String#chomp] to
# remove the line-ending characters from the results.

puts system('whoami')
puts `whoami`

# Okay, this is fine for simple cases -- we can run some other process and get the
# return status. But many times we need a bit more control than that. We'd like to
# carray on a conversation with the subprocess, possibly sedning it data and possibly
# getting some back. The method [IO.popen] does just this.