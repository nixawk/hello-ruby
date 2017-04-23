
## The Exception Class

# The package that contains the information about an exception is an object of
# class Exception, or one of class Exception'S children. Ruby predefines a
# tidy hierarchy of exceptions.
#
# When you need to raise an exception, you can use one of the built-in
# Exception classes, or you can create one of your own. If you create your
# own, you might want to make it a subclass of StandardError or one of
# its children. If you don't, your exception won't be caught by default.


begin
  f = File.open('testfile')
  puts 'process code'
rescue Exception => e
  puts "handle exception: #{e}"
else
  puts 'Congratulations - no errors !'
ensure
  f.close unless f.nil?
end
