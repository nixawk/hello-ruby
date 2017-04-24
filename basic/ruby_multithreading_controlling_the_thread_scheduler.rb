
## Controlling the Thread Scheduler

# In a well-designed application, you'll normally just let threads do their thing:
# building timing dependencies into a multithreaded application is generally
# considered to be bad form.

# Class Thread provides a number of methods to control the thread scheduler.
# Incoking [Thread.stop] stops the current thread, while [Thread#run] arranges
# for a particular thread to be run. [Thread.pass] deschedules the current
# thread, allowing othrers to run, and [Thread#join] and [Thread#value] suspend
# the calling thread until a given thread finishes.

t = Thread.new { sleep 1; Thread.pass; Thread.stop; }
puts t.status
t.run
puts t.status
t.run
puts t.status