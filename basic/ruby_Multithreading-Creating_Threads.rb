
# Multithreading
#
# Often the simplest way to do two things at once is by using Ruby threads.
# These are totally in-process, implemented within the Ruby interpreter. That
# makes the Ruby threas completely portable -- there is no reliance on the
# operating system -- but you don't get certain benefits from having native
# threads. You may experience thread starvation (that's where a low-priority
# thread doesn't get a chance to run). If you manage to get your threads
# deaklocked, the whole process may grind to a halt. And if some thread
# happens to make a call to operating system that takes a long time to
# complete, all threads will hang util the interpreter gets control back.
# However, don't let these potential problems put you off--Ruby threads are a
# lightweight and efficient way to archieve parallelism in your code.


# Creating Ruby Threads

# Creating a new thread is pretty straighforward.

require 'net/http'

pages = %w( ruby-doc.com
            ruby-lang.org
            rubular.com
)

threads = []

for page in pages
  threads << Thread.new(page) { |myPage|
    h = Net::HTTP.new(myPage, 80)
    puts "Fetching: #{myPage}"
    resp = h.get('/', nil)
    puts "Got #{myPage}: #{resp.message}"
  }
end


threads.each { |aThread| aThread.join }

# New threads are created with the (Thread.new) call. It is given a block that
# contains the code to be run in a new thread.



# Manipulating Threads

# Another subtlety occurs on the last line in the program. Why do we call
# (join) on each of the threads we created ?

# When a Ruby program terminates, all running threads are killed, regardless
# of their states. However, you can wait for a particular thread to finish by
# calling that thread's (Thread#join) method. The calling thread will block
# util the given thread is finished. By calling join on each of the requestor
# threads, you can make sure that all three requests have completed before you
# terminate the main program.

# In addition to join, there are a few other handy routines that are used to
# manipulate threads. First of all, the current thread is always accessible
# using (Thread.current). You can obtain a list of all threads using
# (Thread.list), which returns a list of all Thread objects that are runnable
# or stopped. To determine the status  of a particular, you can use
# (Thread#status) and (Thread#alive?)

# Also, you can adjust the priority of a thread using (Thread#priority=).
