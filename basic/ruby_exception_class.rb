
# The package that contains the information about an exception is an object of
# class Exception, or one of class Exception'S children. Ruby predefines a
# tidy hierarchy of exceptions.
#
# When you need to raise an exception, you can use one of the built-in
# Exception classes, or you can create one of your own.


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
