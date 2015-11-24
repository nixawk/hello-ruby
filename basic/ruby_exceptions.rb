#!/usr/bin/ruby

# The program stops if an exception occurs. So exceptions are used to handle
# various type of errors, which may occur during a program execution and take
# appropriate action instead of halting program completely.


begin
  # raise 'A test exception.'
  puts "I'm not raising exception."
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations -- no errors !"
ensure
  puts "Ensuring exception" # Always will be executed
end
