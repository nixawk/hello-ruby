
## chomp(separator=$/) -> new_str

# Returns a new string with the given record separator removed from the end of str (if
# present). If $/ has not been changed from the default Ruby record separator, then chomp
# also removes carriage return characters (that is will remove \n, \r, and \r\n). If $/ is
# an empty string, it will remove all trailing newlines from the string.

puts "hello".chomp                #=> "hello"
puts "hello\n".chomp              #=> "hello"
puts "hello\r\n".chomp            #=> "hello"
puts "hello\n\r".chomp            #=> "hello\n"
puts "hello\r".chomp              #=> "hello"
puts "hello \n there".chomp       #=> "hello \n there"
puts "hello".chomp("llo")         #=> "he"
puts "hello\r\n\r\n".chomp('')    #=> "hello"
puts "hello\r\n\r\r\n".chomp('')  #=> "hello\r\n\r"