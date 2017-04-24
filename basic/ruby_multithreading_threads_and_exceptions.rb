
## Threads and Exceptions

# What happens if a thread raises an unhandled exception ?

# If [abort_on_exception] is false, the default condition, an unhandled exception
# simply kills the current thread---all the rest continue to run. In the following
# example, thread number 3 belows up and fails to produce any output. However,
# you can still see the trace from the other threads.

Thread.abort_on_exception = true
threads = []

5.times do |i|
  threads << Thread.new do
    raise "Boom!" if i == 3
    puts i
  end
end

threads.each { |t| t.join }

# However, set [abort_on_exception] to true, and an unhandled exception kills all running threads.
# Once thread 3 dies, no more output is produced.