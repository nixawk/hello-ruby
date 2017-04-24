
## Thread Variables

# As we described in the previous section, a thread can normally access any
# variables that are in scope when the thread is created. Variables local
# to the block of a thread are local to the thread, and are not shared.

# But what if you need per-thread variables that can be accessed by other
# threads including the main thread? Thread features a special facility
# that allows thread local variables to be created and accessed by name.
# You simply treat the thread object as if it were a Hash, writing to
# elements using []= and reading them back using []. In this example, each
# thread records the current value of the variable count in a thread-local variable
# with the key mycount. (There's a race condition in this code, but we haven't
# talked about synchronization yet, so we'll just quitely ignore it for now.)

threads = []

10.times do |i|
  threads << Thread.new do
  	sleep(rand(0)/10.0)
    Thread.current['count'] = i
  end
end

threads.each do |aThread|
  aThread.join
  puts aThread['count']
end

# The main thread waits for the subthreads to finish and then prints out the
# value of count captured by each. Just to make it more interesting, we have
# each thread wait a random time before recording the value.