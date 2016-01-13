
# Threads and Exceptions
#
# What happens if a thread raises an unhandled exception? It depends on the
# setting of the abort_on_exception flag,
#
# If abort_on_exception is false, the default condition, an unhandled
# exception simply kills the current thread -- all the rest continue to run.
# In the following example, thread number 3 blows up and fails to product any
# output. However, you can still see the trace from the other threads.

threads = []
6.times { |i|
  threads << Thread.new(i) {
    raise 'Boom !' if i == 3
    puts i
  }
}

threads.each { |t| t.join }
