
## Multithreading

# Often the simplest way to do two things at once is by using Ruby threads.
# These are totally in-process, implemented within the Ruby interoreter. That
# makes the Ruby threads completely portable---there is no reliance on the operating
# system---but you don't get certain benefits from having native threads. You may
# experience thread starvation (that's where a low-priority thread doesn't get a
# chance to run). If you manage to get your threads deadlocked, the whole process
# may grind to a halt. And if some thread happens to make a call to the operating
# system that takes a long time to complete, all threads will hang until the
# interpreter gets control back. However, don't let these potential problems put
# you off---Ruby threads are a lightweight and effcient way to achieve parallelism in
# your code.

require 'net/http'

pages = %w{
  www.ruby-doc.com
  www.ruby-lang.org
}

threads = []

for page in pages
  threads << Thread.new(page) do |myPage|
    h = Net::HTTP.new(myPage, 80)
    puts "Fetching: #{myPage}"
    resp, data = h.get('/', nil)
    puts "Get #{myPage}: #{resp.message}"
  end
end

threads.each { |aThread| aThread.join }

# New threads are created with the Thread.new call. It is given a block that contains
# the code to be run in a new thread. In our case, the block uses the net/http library
# to fetch the top page from each of our norminated sites. Our tracing clearly shows
# that these fetches are going on in parallel.

# When we create the thread, we pass the required HTML page in as a parameter. This
# parameter is passed on to the block myPage. Why do we do this, rather than simply
# using the value of the variable page within the block ?

# A thread shares all global, instance, and local variables that are in existence at the
# time the thread starts. As anyone with a kid brother can tell you, sharing isn't always
# a good thing. In this case, all three threads would share the variable page. The first
# thread gets started, and page is set to http://www.ruby-doc.com. In the meantime, the
# loop creating the threads is still running. The second time around, page gets set to
# http://www.ruby-lang.org. If the first thread has not yet finished using the page variable,
# it will suddenly start using its new value. These bugs are difficult to track down.

# However, local variables created within a thread's block are truly local to that
# thread---each thread will have its own copy of these variables. In our case, the
# variable myPage will be set at the time the thread is created, and each thread will
# have its own copy of the page address. 