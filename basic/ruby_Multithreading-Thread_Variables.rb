
# Thread Variables
# As we described in the previous section, a thread can normally access any
# variables that are in scope when the thread is created. Variables local to
# the block of a thread are local to the thread, and are not shared.

# But what if you need per-thread variables that can be accessed by other
# threads--including the main thread? Thread features a special facility that
# allows thread local variables to be created and accessed by name. You simply
# treat the thread objects as if it were a Hash, writing to elements using []=
# and reading them back using []. In this example, each thread records the
# current value of the variable count in a thread-local variable with the key
# mycount.

count = 0
arr = []
10.times do |i|
  arr[i] = Thread.new {
    sleep(rand(0) / 10.0)
    Thread.current['mycount'] = count
    count += 1
  }
end

arr.each {|t| t.join; print t['mycount'], ', '}
puts "count = #{count}"
