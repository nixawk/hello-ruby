
## Manipulating Threads

# When a Ruby program terminates, all running threads are killed, regardless of their states.
# However, you can wait for a particular thread to finish by calling that thread's [Thread#join]
# method. The calling thread will block until the given thread is finished. By calling join on
# each of the requestor threads, you can make sure that all three requests have completed
# before you terminate the main program.

# In addition to join, there are a few other handy routines that are used to manipulate threads.
# First of all, the current thread s always accessible using [Thread.current]. You can obtain
# a list of all threads using [Thread.list], which returns a list of all Thread objects that are
# runnable or stoppped. To determine the status of a particular thread, you can use
# [Thread#status] and [Thread#alive?]

# Also, you can adjust the priority of a thread using [Thread#priority=]. Higher-priority threads
# will run before lower-priority threads. We'll talk more about thread scheduling, and stopping
# and starting threads, in just a bit.

threads = []

1.times do |count|
  threads << Thread.new do
  	Thread.current['count'] = count
  end
end

threads.each do |aThread|
  puts aThread.status
  aThread.join
end