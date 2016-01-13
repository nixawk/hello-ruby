
# Class Thread provides a number of methods to control the thread scheduler.
# Invoking (Thread.stop) stops the current thread, while (Thread#run) arranges
# for a particular thread to be run. Thread.pass deschedules the current
# thread, allowing others to run, and (Thread#join) and (Thread#value) suspend
# the calling thread until a given thread finishes.

t = Thread.new { sleep 1; Thread.pass; Thread.stop; }
puts t.status
puts t.run
puts t.status
puts t.run
puts t.status
